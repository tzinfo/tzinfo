require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Noronha < Timezone #:nodoc:
setup
set_identifier('America/Noronha')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(10454977109,4320),0,Date::ITALY),-7780,0,:'LMT')}
add_period(1914,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(10454977109,4320),0,Date::ITALY),DateTime.new0(Rational.new!(58238833,24),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1931,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58238833,24),0,Date::ITALY),DateTime.new0(Rational.new!(58243165,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1932,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58243165,24),0,Date::ITALY),DateTime.new0(Rational.new!(29123803,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1932,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29123803,12),0,Date::ITALY),DateTime.new0(Rational.new!(58251925,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1933,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58251925,24),0,Date::ITALY),DateTime.new0(Rational.new!(29199019,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1949,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29199019,12),0,Date::ITALY),DateTime.new0(Rational.new!(29200651,12),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1950,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(29200651,12),0,Date::ITALY),DateTime.new0(Rational.new!(29203399,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1950,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29203399,12),0,Date::ITALY),DateTime.new0(Rational.new!(58409701,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1951,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58409701,24),0,Date::ITALY),DateTime.new0(Rational.new!(29207779,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1951,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29207779,12),0,Date::ITALY),DateTime.new0(Rational.new!(58418485,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1952,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(58418485,24),0,Date::ITALY),DateTime.new0(Rational.new!(29212171,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1952,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29212171,12),0,Date::ITALY),DateTime.new0(Rational.new!(58426501,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1953,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58426501,24),0,Date::ITALY),DateTime.new0(Rational.new!(29260471,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1963,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29260471,12),0,Date::ITALY),DateTime.new0(Rational.new!(58522933,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1964,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58522933,24),0,Date::ITALY),DateTime.new0(Rational.new!(29265499,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1965,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(29265499,12),0,Date::ITALY),DateTime.new0(Rational.new!(58532413,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1965,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58532413,24),0,Date::ITALY),DateTime.new0(Rational.new!(29269147,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1965,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(29269147,12),0,Date::ITALY),DateTime.new0(Rational.new!(58540453,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1966,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58540453,24),0,Date::ITALY),DateTime.new0(Rational.new!(29273167,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1966,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29273167,12),0,Date::ITALY),DateTime.new0(Rational.new!(58549213,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1967,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58549213,24),0,Date::ITALY),DateTime.new0(Rational.new!(29277547,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1967,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29277547,12),0,Date::ITALY),DateTime.new0(Rational.new!(58557997,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1968,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58557997,24),0,Date::ITALY),DateTime.new0(Rational.new!(29356459,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1985,11) {TimezonePeriod.new(DateTime.new0(Rational.new!(29356459,12),0,Date::ITALY),DateTime.new0(Rational.new!(58716109,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58716109,24),0,Date::ITALY),DateTime.new0(Rational.new!(29360743,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1986,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29360743,12),0,Date::ITALY),DateTime.new0(Rational.new!(58724173,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1987,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58724173,24),0,Date::ITALY),DateTime.new0(Rational.new!(29365123,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1987,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29365123,12),0,Date::ITALY),DateTime.new0(Rational.new!(58732765,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1988,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58732765,24),0,Date::ITALY),DateTime.new0(Rational.new!(29369407,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1988,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29369407,12),0,Date::ITALY),DateTime.new0(Rational.new!(58741333,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1989,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58741333,24),0,Date::ITALY),DateTime.new0(Rational.new!(29373775,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1989,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29373775,12),0,Date::ITALY),DateTime.new0(Rational.new!(58750405,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(1990,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58750405,24),0,Date::ITALY),DateTime.new0(Rational.new!(29377819,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29377819,12),0,Date::ITALY),DateTime.new0(Rational.new!(29417419,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1999,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29417419,12),0,Date::ITALY),DateTime.new0(Rational.new!(29417455,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29417455,12),0,Date::ITALY),DateTime.new0(Rational.new!(58838437,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(2000,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58838437,24),0,Date::ITALY),DateTime.new0(Rational.new!(29421907,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29421907,12),0,Date::ITALY),DateTime.new0(Rational.new!(58843981,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58843981,24),0,Date::ITALY),DateTime.new0(Rational.new!(29425987,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(2001,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29425987,12),0,Date::ITALY),DateTime.new0(Rational.new!(29426359,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29426359,12),0,Date::ITALY),DateTime.new0(Rational.new!(58855741,24),0,Date::ITALY),-7200,3600,:'FNST')}
add_period(2002,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(58855741,24),0,Date::ITALY),DateTime.new0(Rational.new!(29430583,12),0,Date::ITALY),-7200,0,:'FNT')}
add_period(2002,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(29430583,12),0,Date::ITALY),nil,-7200,0,:'FNT')}
end
end
end
end
