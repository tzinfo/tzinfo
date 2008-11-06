#--
# Copyright (c) 2008 Philip Ross
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
#++

require 'tzinfo/data_timezone_info'
require 'tzinfo/timezone'

module TZInfo
  class ZoneinfoTimezoneInfo < DataTimezoneInfo #:nodoc:
  
    @@zoneinfo_dir = nil
    
    class << self
      def zoneinfo_dir
        @@zoneinfo_dir ||= find_zoneinfo_dir
      end
      
      def zoneinfo_dir=(dir)
        @@zoneinfo_dir = dir
      end
      
      private
        def find_zoneinfo_dir
          dir = ['/usr/share/zoneinfo', '/usr/share/lib/zoneinfo', '/etc/zoneinfo'].detect do |dir|
            File.directory?(dir)
          end
          
          raise InvalidTimezoneIdentifier, 'Zoneinfo directory not found, use TZInfo::ZoneinfoTimezoneInfo.zoneinfo_dir= to set' unless dir
          dir
        end
    end
    
    def initialize(identifier)
      super(identifier)
      
      begin
        File.open(File.join(self.class.zoneinfo_dir, identifier)) do |f|
          parse(f)
        end
      rescue Errno::ENOENT => e
        raise InvalidTimezoneIdentifier, e.message
      end
    end
    
    private
      def make_signed(long)
        long -= 0x100000000 if long >= 0x80000000
        long
      end
      
      def parse(input)
        magic, ttisgmtcnt, ttisstdcnt, leapcnt, timecnt, typecnt, charcnt =
          input.read(44).unpack('a5 x15 NNNNNN')
        
        raise InvalidTimezoneIdentifier, "Invalid magic: #{magic}" unless magic =~ /^TZif2?/
        
        transitions = []
        
        (0...timecnt).each do |i|
          transition_time = make_signed(input.read(4).unpack('N')[0])
          transitions << {:time => Time.at(transition_time).utc}
        end
        
        (0...timecnt).each do |i|
          localtime_type = input.read(1).unpack('C')[0]
          transitions[i][:offset] = localtime_type
        end
        
        offsets = []
        
        (0...typecnt).each do |i|
          gmtoff, isdst, abbrind = input.read(6).unpack('NCC')
          gmtoff = make_signed(gmtoff)
          isdst = isdst == 1
          
          # The setting of offsets is a hack at the moment.
          # TZInfo wants the base UTC offset and daylight savings offset separately.
          # For now just assume all dst offsets are 1 hour.
          std_offset = isdst ? 3600 : 0
          
          offsets << {:utc_offset => gmtoff - std_offset, :std_offset => std_offset, :is_dst => isdst, :abbr_index => abbrind}
        end
        
        abbrev = input.read(charcnt)
        
        offsets.each do |o|
          o[:abbr] = abbrev[o[:abbr_index]...abbrev.index("\0", o[:abbr_index])]
        end
        
        first = nil
        offsets.each_with_index do |o, i|
          if !o[:is_dst]
            first = i
            break
          end
        end
        
        if first
          offset first, offsets[first][:utc_offset], offsets[first][:std_offset], offsets[first][:abbr].to_sym
        end
        
        offsets.each_with_index do |o, i|
          offset i, o[:utc_offset], o[:std_offset], o[:abbr].to_sym unless i == first
        end
        
        transitions.each do |t|
          transition t[:time].year, t[:time].mon, t[:offset], t[:time].to_i
        end
      end
  end
end
