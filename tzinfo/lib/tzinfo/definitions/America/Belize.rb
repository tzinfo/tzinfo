require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Belize < Timezone #:nodoc:
setup
set_identifier('America/Belize')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(483898749,200),0,Date::ITALY),-21168,0,:'LMT')}
add_period(1912,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(483898749,200),0,Date::ITALY),DateTime.new0(Rational.new!(9687491,4),0,Date::ITALY),-21600,0,:'CT')}
add_period(1918,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9687491,4),0,Date::ITALY),DateTime.new0(Rational.new!(116255939,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1919,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116255939,48),0,Date::ITALY),DateTime.new0(Rational.new!(9688947,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1919,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9688947,4),0,Date::ITALY),DateTime.new0(Rational.new!(116273747,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1920,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116273747,48),0,Date::ITALY),DateTime.new0(Rational.new!(9690403,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1920,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9690403,4),0,Date::ITALY),DateTime.new0(Rational.new!(116291219,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1921,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116291219,48),0,Date::ITALY),DateTime.new0(Rational.new!(9691859,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1921,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9691859,4),0,Date::ITALY),DateTime.new0(Rational.new!(116308691,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1922,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116308691,48),0,Date::ITALY),DateTime.new0(Rational.new!(9693343,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1922,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9693343,4),0,Date::ITALY),DateTime.new0(Rational.new!(116326163,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1923,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116326163,48),0,Date::ITALY),DateTime.new0(Rational.new!(9694799,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1923,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9694799,4),0,Date::ITALY),DateTime.new0(Rational.new!(116343635,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1924,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116343635,48),0,Date::ITALY),DateTime.new0(Rational.new!(9696255,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1924,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9696255,4),0,Date::ITALY),DateTime.new0(Rational.new!(116361443,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1925,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116361443,48),0,Date::ITALY),DateTime.new0(Rational.new!(9697711,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1925,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9697711,4),0,Date::ITALY),DateTime.new0(Rational.new!(116378915,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1926,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116378915,48),0,Date::ITALY),DateTime.new0(Rational.new!(9699167,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1926,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9699167,4),0,Date::ITALY),DateTime.new0(Rational.new!(116396387,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1927,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116396387,48),0,Date::ITALY),DateTime.new0(Rational.new!(9700623,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1927,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9700623,4),0,Date::ITALY),DateTime.new0(Rational.new!(116413859,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1928,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116413859,48),0,Date::ITALY),DateTime.new0(Rational.new!(9702107,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1928,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9702107,4),0,Date::ITALY),DateTime.new0(Rational.new!(116431331,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1929,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116431331,48),0,Date::ITALY),DateTime.new0(Rational.new!(9703563,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1929,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9703563,4),0,Date::ITALY),DateTime.new0(Rational.new!(116448803,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1930,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116448803,48),0,Date::ITALY),DateTime.new0(Rational.new!(9705019,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1930,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9705019,4),0,Date::ITALY),DateTime.new0(Rational.new!(116466611,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1931,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116466611,48),0,Date::ITALY),DateTime.new0(Rational.new!(9706475,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9706475,4),0,Date::ITALY),DateTime.new0(Rational.new!(116484083,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1932,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116484083,48),0,Date::ITALY),DateTime.new0(Rational.new!(9707931,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9707931,4),0,Date::ITALY),DateTime.new0(Rational.new!(116501555,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1933,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116501555,48),0,Date::ITALY),DateTime.new0(Rational.new!(9709415,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1933,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9709415,4),0,Date::ITALY),DateTime.new0(Rational.new!(116519027,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1934,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116519027,48),0,Date::ITALY),DateTime.new0(Rational.new!(9710871,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1934,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9710871,4),0,Date::ITALY),DateTime.new0(Rational.new!(116536499,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1935,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116536499,48),0,Date::ITALY),DateTime.new0(Rational.new!(9712327,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1935,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9712327,4),0,Date::ITALY),DateTime.new0(Rational.new!(116553971,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1936,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116553971,48),0,Date::ITALY),DateTime.new0(Rational.new!(9713783,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1936,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9713783,4),0,Date::ITALY),DateTime.new0(Rational.new!(116571779,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1937,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116571779,48),0,Date::ITALY),DateTime.new0(Rational.new!(9715239,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1937,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9715239,4),0,Date::ITALY),DateTime.new0(Rational.new!(116589251,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1938,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116589251,48),0,Date::ITALY),DateTime.new0(Rational.new!(9716695,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1938,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9716695,4),0,Date::ITALY),DateTime.new0(Rational.new!(116606723,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1939,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116606723,48),0,Date::ITALY),DateTime.new0(Rational.new!(9718179,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1939,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9718179,4),0,Date::ITALY),DateTime.new0(Rational.new!(116624195,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1940,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116624195,48),0,Date::ITALY),DateTime.new0(Rational.new!(9719635,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1940,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9719635,4),0,Date::ITALY),DateTime.new0(Rational.new!(116641667,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1941,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116641667,48),0,Date::ITALY),DateTime.new0(Rational.new!(9721091,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1941,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9721091,4),0,Date::ITALY),DateTime.new0(Rational.new!(116659475,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1942,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116659475,48),0,Date::ITALY),DateTime.new0(Rational.new!(9722547,4),0,Date::ITALY),-21600,0,:'CST')}
add_period(1942,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(9722547,4),0,Date::ITALY),DateTime.new0(Rational.new!(116676947,48),0,Date::ITALY),-21600,1800,:'CHDT')}
add_period(1943,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(116676947,48),0,Date::ITALY),123919200,-21600,0,:'CST')}
add_period(1973,12) {TimezonePeriod.new(123919200,129618000,-21600,3600,:'CDT')}
add_period(1974,2) {TimezonePeriod.new(129618000,409039200,-21600,0,:'CST')}
add_period(1982,12) {TimezonePeriod.new(409039200,413874000,-21600,3600,:'CDT')}
add_period(1983,2) {TimezonePeriod.new(413874000,nil,-21600,0,:'CST')}
end
end
end
end
