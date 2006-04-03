require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Tehran < Timezone #:nodoc:
setup
set_identifier('Asia/Tehran')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(26145324257,10800),0,Date::ITALY),12344,0,:LMT)}
add_period(1915,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26145324257,10800),0,Date::ITALY),DateTime.new0(Rational.new!(26263670657,10800),0,Date::ITALY),12344,0,:TMT)}
add_period(1945,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(26263670657,10800),0,Date::ITALY),247177800,12600,0,:IRST)}
add_period(1977,10) {TimezonePeriod.new(247177800,259272000,14400,0,:IRST)}
add_period(1978,3) {TimezonePeriod.new(259272000,277758000,14400,3600,:IRDT)}
add_period(1978,10) {TimezonePeriod.new(277758000,283982400,14400,0,:IRST)}
add_period(1978,12) {TimezonePeriod.new(283982400,290809800,12600,0,:IRST)}
add_period(1979,3) {TimezonePeriod.new(290809800,306531000,12600,3600,:IRDT)}
add_period(1979,9) {TimezonePeriod.new(306531000,322432200,12600,0,:IRST)}
add_period(1980,3) {TimezonePeriod.new(322432200,338499000,12600,3600,:IRDT)}
add_period(1980,9) {TimezonePeriod.new(338499000,673216200,12600,0,:IRST)}
add_period(1991,5) {TimezonePeriod.new(673216200,685481400,12600,3600,:IRDT)}
add_period(1991,9) {TimezonePeriod.new(685481400,701209800,12600,0,:IRST)}
add_period(1992,3) {TimezonePeriod.new(701209800,717103800,12600,3600,:IRDT)}
add_period(1992,9) {TimezonePeriod.new(717103800,732745800,12600,0,:IRST)}
add_period(1993,3) {TimezonePeriod.new(732745800,748639800,12600,3600,:IRDT)}
add_period(1993,9) {TimezonePeriod.new(748639800,764281800,12600,0,:IRST)}
add_period(1994,3) {TimezonePeriod.new(764281800,780175800,12600,3600,:IRDT)}
add_period(1994,9) {TimezonePeriod.new(780175800,795817800,12600,0,:IRST)}
add_period(1995,3) {TimezonePeriod.new(795817800,811711800,12600,3600,:IRDT)}
add_period(1995,9) {TimezonePeriod.new(811711800,827353800,12600,0,:IRST)}
add_period(1996,3) {TimezonePeriod.new(827353800,843247800,12600,3600,:IRDT)}
add_period(1996,9) {TimezonePeriod.new(843247800,858976200,12600,0,:IRST)}
add_period(1997,3) {TimezonePeriod.new(858976200,874870200,12600,3600,:IRDT)}
add_period(1997,9) {TimezonePeriod.new(874870200,890512200,12600,0,:IRST)}
add_period(1998,3) {TimezonePeriod.new(890512200,906406200,12600,3600,:IRDT)}
add_period(1998,9) {TimezonePeriod.new(906406200,922048200,12600,0,:IRST)}
add_period(1999,3) {TimezonePeriod.new(922048200,937942200,12600,3600,:IRDT)}
add_period(1999,9) {TimezonePeriod.new(937942200,953584200,12600,0,:IRST)}
add_period(2000,3) {TimezonePeriod.new(953584200,969478200,12600,3600,:IRDT)}
add_period(2000,9) {TimezonePeriod.new(969478200,985206600,12600,0,:IRST)}
add_period(2001,3) {TimezonePeriod.new(985206600,1001100600,12600,3600,:IRDT)}
add_period(2001,9) {TimezonePeriod.new(1001100600,1016742600,12600,0,:IRST)}
add_period(2002,3) {TimezonePeriod.new(1016742600,1032636600,12600,3600,:IRDT)}
add_period(2002,9) {TimezonePeriod.new(1032636600,1048278600,12600,0,:IRST)}
add_period(2003,3) {TimezonePeriod.new(1048278600,1064172600,12600,3600,:IRDT)}
add_period(2003,9) {TimezonePeriod.new(1064172600,1079814600,12600,0,:IRST)}
add_period(2004,3) {TimezonePeriod.new(1079814600,1095708600,12600,3600,:IRDT)}
add_period(2004,9) {TimezonePeriod.new(1095708600,1111437000,12600,0,:IRST)}
add_period(2005,3) {TimezonePeriod.new(1111437000,1127331000,12600,3600,:IRDT)}
add_period(2005,9) {TimezonePeriod.new(1127331000,nil,12600,0,:IRST)}
end
end
end
end
