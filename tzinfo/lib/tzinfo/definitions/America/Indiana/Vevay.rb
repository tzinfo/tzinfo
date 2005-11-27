require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
module Indiana #:nodoc:
class Vevay < Timezone #:nodoc:
setup
set_identifier('America/Indiana/Vevay')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(9636533,4),0,Date::ITALY),-20416,0,:'LMT')}
add_period(1883,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9636533,4),0,Date::ITALY),DateTime.new0(Rational.new!(14530103,6),0,Date::ITALY),-21600,0,:'CT')}
add_period(1918,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14530103,6),0,Date::ITALY),DateTime.new0(Rational.new!(58125451,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58125451,24),0,Date::ITALY),DateTime.new0(Rational.new!(14532287,6),0,Date::ITALY),-21600,0,:'CST')}
add_period(1919,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(14532287,6),0,Date::ITALY),DateTime.new0(Rational.new!(58134187,24),0,Date::ITALY),-21600,3600,:'CDT')}
add_period(1919,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58134187,24),0,Date::ITALY),DateTime.new0(Rational.new!(14582399,6),0,Date::ITALY),-21600,0,:'CST')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(14582399,6),0,Date::ITALY),DateTime.new0(Rational.new!(58361491,24),0,Date::ITALY),-21600,3600,:'CWT')}
add_period(1945,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58361491,24),0,Date::ITALY),DateTime.new0(Rational.new!(14609147,6),0,Date::ITALY),-21600,0,:'CST')}
add_period(1954,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(14609147,6),0,Date::ITALY),DateTime.new0(Rational.new!(58565345,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1969,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58565345,24),0,Date::ITALY),DateTime.new0(Rational.new!(58568131,24),0,Date::ITALY),-18000,0,:'ET')}
add_period(1969,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58568131,24),0,Date::ITALY),DateTime.new0(Rational.new!(9762083,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1969,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9762083,4),0,Date::ITALY),DateTime.new0(Rational.new!(58576867,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1970,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58576867,24),0,Date::ITALY),DateTime.new0(Rational.new!(9763539,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1970,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9763539,4),0,Date::ITALY),DateTime.new0(Rational.new!(58585603,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1971,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58585603,24),0,Date::ITALY),DateTime.new0(Rational.new!(9765023,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1971,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9765023,4),0,Date::ITALY),DateTime.new0(Rational.new!(58594507,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1972,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58594507,24),0,Date::ITALY),DateTime.new0(Rational.new!(9766479,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(1972,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9766479,4),0,Date::ITALY),DateTime.new0(Rational.new!(58600409,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(1973,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58600409,24),0,Date::ITALY),DateTime.new0(Rational.new!(58889681,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2006,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58889681,24),0,Date::ITALY),DateTime.new0(Rational.new!(58891867,24),0,Date::ITALY),-18000,0,:'ET')}
add_period(2006,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58891867,24),0,Date::ITALY),DateTime.new0(Rational.new!(9816151,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2006,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9816151,4),0,Date::ITALY),DateTime.new0(Rational.new!(58900099,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2007,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58900099,24),0,Date::ITALY),DateTime.new0(Rational.new!(9817635,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2007,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9817635,4),0,Date::ITALY),DateTime.new0(Rational.new!(58908835,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2008,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58908835,24),0,Date::ITALY),DateTime.new0(Rational.new!(9819091,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2008,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9819091,4),0,Date::ITALY),DateTime.new0(Rational.new!(58917571,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2009,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58917571,24),0,Date::ITALY),DateTime.new0(Rational.new!(9820547,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2009,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9820547,4),0,Date::ITALY),DateTime.new0(Rational.new!(58926475,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2010,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58926475,24),0,Date::ITALY),DateTime.new0(Rational.new!(9822031,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2010,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9822031,4),0,Date::ITALY),DateTime.new0(Rational.new!(58935211,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2011,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58935211,24),0,Date::ITALY),DateTime.new0(Rational.new!(9823487,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2011,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9823487,4),0,Date::ITALY),DateTime.new0(Rational.new!(58943947,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2012,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58943947,24),0,Date::ITALY),DateTime.new0(Rational.new!(9824943,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2012,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9824943,4),0,Date::ITALY),DateTime.new0(Rational.new!(58952683,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2013,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58952683,24),0,Date::ITALY),DateTime.new0(Rational.new!(9826399,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2013,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9826399,4),0,Date::ITALY),DateTime.new0(Rational.new!(58961419,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2014,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58961419,24),0,Date::ITALY),DateTime.new0(Rational.new!(9827855,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2014,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9827855,4),0,Date::ITALY),DateTime.new0(Rational.new!(58970155,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2015,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58970155,24),0,Date::ITALY),DateTime.new0(Rational.new!(9829311,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2015,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9829311,4),0,Date::ITALY),DateTime.new0(Rational.new!(58979059,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2016,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58979059,24),0,Date::ITALY),DateTime.new0(Rational.new!(9830795,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2016,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9830795,4),0,Date::ITALY),DateTime.new0(Rational.new!(58987795,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2017,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58987795,24),0,Date::ITALY),DateTime.new0(Rational.new!(9832251,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2017,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9832251,4),0,Date::ITALY),DateTime.new0(Rational.new!(58996531,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2018,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58996531,24),0,Date::ITALY),DateTime.new0(Rational.new!(9833707,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2018,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9833707,4),0,Date::ITALY),DateTime.new0(Rational.new!(59005267,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2019,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59005267,24),0,Date::ITALY),DateTime.new0(Rational.new!(9835163,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2019,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9835163,4),0,Date::ITALY),DateTime.new0(Rational.new!(59014003,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2020,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59014003,24),0,Date::ITALY),DateTime.new0(Rational.new!(9836619,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2020,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9836619,4),0,Date::ITALY),DateTime.new0(Rational.new!(59022907,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2021,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59022907,24),0,Date::ITALY),DateTime.new0(Rational.new!(9838103,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2021,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9838103,4),0,Date::ITALY),DateTime.new0(Rational.new!(59031643,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2022,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59031643,24),0,Date::ITALY),DateTime.new0(Rational.new!(9839559,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2022,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9839559,4),0,Date::ITALY),DateTime.new0(Rational.new!(59040379,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2023,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59040379,24),0,Date::ITALY),DateTime.new0(Rational.new!(9841015,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2023,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9841015,4),0,Date::ITALY),DateTime.new0(Rational.new!(59049115,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2024,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59049115,24),0,Date::ITALY),DateTime.new0(Rational.new!(9842471,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2024,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9842471,4),0,Date::ITALY),DateTime.new0(Rational.new!(59057851,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2025,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59057851,24),0,Date::ITALY),DateTime.new0(Rational.new!(9843927,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2025,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9843927,4),0,Date::ITALY),DateTime.new0(Rational.new!(59066587,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2026,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59066587,24),0,Date::ITALY),DateTime.new0(Rational.new!(9845383,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2026,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9845383,4),0,Date::ITALY),DateTime.new0(Rational.new!(59075491,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2027,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59075491,24),0,Date::ITALY),DateTime.new0(Rational.new!(9846867,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2027,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9846867,4),0,Date::ITALY),DateTime.new0(Rational.new!(59084227,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2028,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59084227,24),0,Date::ITALY),DateTime.new0(Rational.new!(9848323,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2028,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9848323,4),0,Date::ITALY),DateTime.new0(Rational.new!(59092963,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2029,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59092963,24),0,Date::ITALY),DateTime.new0(Rational.new!(9849779,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2029,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9849779,4),0,Date::ITALY),DateTime.new0(Rational.new!(59101699,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2030,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59101699,24),0,Date::ITALY),DateTime.new0(Rational.new!(9851235,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2030,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9851235,4),0,Date::ITALY),DateTime.new0(Rational.new!(59110435,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2031,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59110435,24),0,Date::ITALY),DateTime.new0(Rational.new!(9852691,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2031,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9852691,4),0,Date::ITALY),DateTime.new0(Rational.new!(59119339,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2032,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59119339,24),0,Date::ITALY),DateTime.new0(Rational.new!(9854175,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2032,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9854175,4),0,Date::ITALY),DateTime.new0(Rational.new!(59128075,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2033,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59128075,24),0,Date::ITALY),DateTime.new0(Rational.new!(9855631,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2033,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9855631,4),0,Date::ITALY),DateTime.new0(Rational.new!(59136811,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2034,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59136811,24),0,Date::ITALY),DateTime.new0(Rational.new!(9857087,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2034,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9857087,4),0,Date::ITALY),DateTime.new0(Rational.new!(59145547,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2035,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59145547,24),0,Date::ITALY),DateTime.new0(Rational.new!(9858543,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2035,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9858543,4),0,Date::ITALY),DateTime.new0(Rational.new!(59154283,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2036,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59154283,24),0,Date::ITALY),DateTime.new0(Rational.new!(9859999,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2036,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9859999,4),0,Date::ITALY),DateTime.new0(Rational.new!(59163019,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2037,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59163019,24),0,Date::ITALY),DateTime.new0(Rational.new!(9861455,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2037,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9861455,4),0,Date::ITALY),DateTime.new0(Rational.new!(59171923,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2038,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59171923,24),0,Date::ITALY),DateTime.new0(Rational.new!(9862939,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2038,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9862939,4),0,Date::ITALY),DateTime.new0(Rational.new!(59180659,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2039,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59180659,24),0,Date::ITALY),DateTime.new0(Rational.new!(9864395,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2039,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9864395,4),0,Date::ITALY),DateTime.new0(Rational.new!(59189395,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2040,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59189395,24),0,Date::ITALY),DateTime.new0(Rational.new!(9865851,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2040,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9865851,4),0,Date::ITALY),DateTime.new0(Rational.new!(59198131,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2041,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59198131,24),0,Date::ITALY),DateTime.new0(Rational.new!(9867307,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2041,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9867307,4),0,Date::ITALY),DateTime.new0(Rational.new!(59206867,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2042,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59206867,24),0,Date::ITALY),DateTime.new0(Rational.new!(9868763,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2042,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9868763,4),0,Date::ITALY),DateTime.new0(Rational.new!(59215603,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2043,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59215603,24),0,Date::ITALY),DateTime.new0(Rational.new!(9870219,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2043,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9870219,4),0,Date::ITALY),DateTime.new0(Rational.new!(59224507,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2044,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59224507,24),0,Date::ITALY),DateTime.new0(Rational.new!(9871703,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2044,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9871703,4),0,Date::ITALY),DateTime.new0(Rational.new!(59233243,24),0,Date::ITALY),-18000,0,:'EST')}
add_period(2045,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(59233243,24),0,Date::ITALY),DateTime.new0(Rational.new!(9873159,4),0,Date::ITALY),-18000,3600,:'EDT')}
add_period(2045,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(9873159,4),0,Date::ITALY),nil,-18000,0,:'EST')}
end
end
end
end
end
