require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Asia
      module Tehran
        include TimezoneDefinition
        
        timezone 'Asia/Tehran' do |tz|
          tz.offset :o0, 12344, 0, :LMT
          tz.offset :o1, 12344, 0, :TMT
          tz.offset :o2, 12600, 0, :IRST
          tz.offset :o3, 14400, 0, :IRST
          tz.offset :o4, 14400, 3600, :IRDT
          tz.offset :o5, 12600, 3600, :IRDT
          
          tz.transition 1915, 12, :o1, 26145324257, 10800
          tz.transition 1945, 12, :o2, 26263670657, 10800
          tz.transition 1977, 10, :o3, 247177800
          tz.transition 1978, 3, :o4, 259272000
          tz.transition 1978, 10, :o3, 277758000
          tz.transition 1978, 12, :o2, 283982400
          tz.transition 1979, 3, :o5, 290809800
          tz.transition 1979, 9, :o2, 306531000
          tz.transition 1980, 3, :o5, 322432200
          tz.transition 1980, 9, :o2, 338499000
          tz.transition 1991, 5, :o5, 673216200
          tz.transition 1991, 9, :o2, 685481400
          tz.transition 1992, 3, :o5, 701209800
          tz.transition 1992, 9, :o2, 717103800
          tz.transition 1993, 3, :o5, 732745800
          tz.transition 1993, 9, :o2, 748639800
          tz.transition 1994, 3, :o5, 764281800
          tz.transition 1994, 9, :o2, 780175800
          tz.transition 1995, 3, :o5, 795817800
          tz.transition 1995, 9, :o2, 811711800
          tz.transition 1996, 3, :o5, 827353800
          tz.transition 1996, 9, :o2, 843247800
          tz.transition 1997, 3, :o5, 858976200
          tz.transition 1997, 9, :o2, 874870200
          tz.transition 1998, 3, :o5, 890512200
          tz.transition 1998, 9, :o2, 906406200
          tz.transition 1999, 3, :o5, 922048200
          tz.transition 1999, 9, :o2, 937942200
          tz.transition 2000, 3, :o5, 953584200
          tz.transition 2000, 9, :o2, 969478200
          tz.transition 2001, 3, :o5, 985206600
          tz.transition 2001, 9, :o2, 1001100600
          tz.transition 2002, 3, :o5, 1016742600
          tz.transition 2002, 9, :o2, 1032636600
          tz.transition 2003, 3, :o5, 1048278600
          tz.transition 2003, 9, :o2, 1064172600
          tz.transition 2004, 3, :o5, 1079814600
          tz.transition 2004, 9, :o2, 1095708600
          tz.transition 2005, 3, :o5, 1111437000
          tz.transition 2005, 9, :o2, 1127331000
        end
      end
    end
  end
end
