#!/usr/bin/ruby

# Reads zdump formatted lines from stdin. Uses the UTC time in the zdump line
# to calculate the local time and zone identifier using TZInfo. If there is
# a difference, a message is output to stdout.

require '../tzinfo/lib/tzinfo'

include TZInfo

STDIN.each {|line|
 if line =~ /^([^\s]+)\s+([A-z][a-z]{2}\s[A-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s[0-9]+)\s[A-Z]+\s=\s([A-z][a-z]{2}\s[A-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s[0-9]+)\s([A-Za-z0-9+\-]+)/ then
   begin
     zone = Timezone.get($1)
     utc = DateTime.parse($2)
     local = DateTime.parse($3)
     identifier = $4
   
     tzi_local = zone.utc_to_local(utc)
     tzi_identifier = zone.period_for_utc(utc).zone_identifier
   
     if tzi_local != local || tzi_identifier.to_s != identifier
       puts "zdump:  #{zone.identifier} #{utc} UTC #{local} #{identifier}"
       puts "tzinfo: #{zone.identifier} #{utc} UTC #{tzi_local} #{tzi_identifier}"
     end
   rescue InvalidTimezoneIdentifier
     puts "Unrecognized timezone: #$1"
   rescue PeriodNotFound
     puts "Period not found for utc: #{utc}"
   rescue StandardError => e
     puts "Error: #{e}"     
   end
 end
}
