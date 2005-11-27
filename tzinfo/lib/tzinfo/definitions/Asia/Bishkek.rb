require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Bishkek < Timezone #:nodoc:
setup
set_identifier('Asia/Bishkek')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4363033127,1800),0,Date::ITALY),17904,0,:'LMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(4363033127,1800),0,Date::ITALY),DateTime.new0(Rational.new!(58227559,24),0,Date::ITALY),18000,0,:'FRUT')}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58227559,24),0,Date::ITALY),DateTime.new0(Rational.new!(9778781,4),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9778781,4),0,Date::ITALY),DateTime.new0(Rational.new!(58677077,24),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58677077,24),0,Date::ITALY),DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9780241,4),0,Date::ITALY),DateTime.new0(Rational.new!(58685837,24),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58685837,24),0,Date::ITALY),DateTime.new0(Rational.new!(9781701,4),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9781701,4),0,Date::ITALY),DateTime.new0(Rational.new!(58694597,24),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58694597,24),0,Date::ITALY),DateTime.new0(Rational.new!(9783165,4),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(9783165,4),0,Date::ITALY),DateTime.new0(Rational.new!(7337920,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7337920,3),0,Date::ITALY),DateTime.new0(Rational.new!(7338466,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7338466,3),0,Date::ITALY),DateTime.new0(Rational.new!(7339012,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7339012,3),0,Date::ITALY),DateTime.new0(Rational.new!(7339558,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7339558,3),0,Date::ITALY),DateTime.new0(Rational.new!(7340104,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7340104,3),0,Date::ITALY),DateTime.new0(Rational.new!(7340650,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7340650,3),0,Date::ITALY),DateTime.new0(Rational.new!(7341196,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7341196,3),0,Date::ITALY),DateTime.new0(Rational.new!(7341742,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7341742,3),0,Date::ITALY),DateTime.new0(Rational.new!(7342288,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7342288,3),0,Date::ITALY),DateTime.new0(Rational.new!(7342834,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7342834,3),0,Date::ITALY),DateTime.new0(Rational.new!(7343380,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7343380,3),0,Date::ITALY),DateTime.new0(Rational.new!(7343926,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7343926,3),0,Date::ITALY),DateTime.new0(Rational.new!(7344493,3),0,Date::ITALY),21600,3600,:'FRUST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7344493,3),0,Date::ITALY),DateTime.new0(Rational.new!(7345039,3),0,Date::ITALY),21600,0,:'FRUT')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7345039,3),0,Date::ITALY),DateTime.new0(Rational.new!(7345498,3),0,Date::ITALY),18000,3600,:'FRUST')}
add_period(1991,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(7345498,3),0,Date::ITALY),DateTime.new0(Rational.new!(9795569,4),0,Date::ITALY),18000,3600,:'KGT')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9795569,4),0,Date::ITALY),DateTime.new0(Rational.new!(58778119,24),0,Date::ITALY),18000,0,:'KGT')}
add_period(1993,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58778119,24),0,Date::ITALY),DateTime.new0(Rational.new!(9797025,4),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1993,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9797025,4),0,Date::ITALY),DateTime.new0(Rational.new!(58786855,24),0,Date::ITALY),18000,0,:'KGT')}
add_period(1994,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58786855,24),0,Date::ITALY),DateTime.new0(Rational.new!(9798481,4),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1994,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9798481,4),0,Date::ITALY),DateTime.new0(Rational.new!(58795591,24),0,Date::ITALY),18000,0,:'KGT')}
add_period(1995,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58795591,24),0,Date::ITALY),DateTime.new0(Rational.new!(9799937,4),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1995,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9799937,4),0,Date::ITALY),DateTime.new0(Rational.new!(58804327,24),0,Date::ITALY),18000,0,:'KGT')}
add_period(1996,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58804327,24),0,Date::ITALY),DateTime.new0(Rational.new!(9801421,4),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1996,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(9801421,4),0,Date::ITALY),DateTime.new0(Rational.new!(117625795,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(1997,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117625795,48),0,Date::ITALY),DateTime.new0(Rational.new!(117635873,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117635873,48),0,Date::ITALY),DateTime.new0(Rational.new!(117643267,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(1998,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117643267,48),0,Date::ITALY),DateTime.new0(Rational.new!(117653345,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117653345,48),0,Date::ITALY),DateTime.new0(Rational.new!(117660739,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(1999,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117660739,48),0,Date::ITALY),DateTime.new0(Rational.new!(117671153,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117671153,48),0,Date::ITALY),DateTime.new0(Rational.new!(117678211,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(2000,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117678211,48),0,Date::ITALY),DateTime.new0(Rational.new!(117688625,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117688625,48),0,Date::ITALY),DateTime.new0(Rational.new!(117695683,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(2001,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117695683,48),0,Date::ITALY),DateTime.new0(Rational.new!(117706097,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117706097,48),0,Date::ITALY),DateTime.new0(Rational.new!(117713491,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(2002,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117713491,48),0,Date::ITALY),DateTime.new0(Rational.new!(117723569,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(2002,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117723569,48),0,Date::ITALY),DateTime.new0(Rational.new!(117730963,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(2003,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117730963,48),0,Date::ITALY),DateTime.new0(Rational.new!(117741041,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(2003,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117741041,48),0,Date::ITALY),DateTime.new0(Rational.new!(117748435,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(2004,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117748435,48),0,Date::ITALY),DateTime.new0(Rational.new!(117758849,48),0,Date::ITALY),18000,3600,:'KGST')}
add_period(2004,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(117758849,48),0,Date::ITALY),DateTime.new0(Rational.new!(117765907,48),0,Date::ITALY),18000,0,:'KGT')}
add_period(2005,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(117765907,48),0,Date::ITALY),DateTime.new0(Rational.new!(9814377,4),0,Date::ITALY),18000,3600,:'KGST')}
add_period(2005,8) {TimezonePeriod.new(DateTime.new0(Rational.new!(9814377,4),0,Date::ITALY),nil,21600,0,:'KGT')}
end
end
end
end
