require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Lima < Timezone #:nodoc:
setup
set_identifier('America/Lima')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(17361854741,7200),0,Date::ITALY),-18492,0,:'LMT')}
add_period(1890,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(17361854741,7200),0,Date::ITALY),DateTime.new0(Rational.new!(17410685143,7200),0,Date::ITALY),-18516,0,:'LMT')}
add_period(1908,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(17410685143,7200),0,Date::ITALY),DateTime.new0(Rational.new!(58293593,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1938,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(58293593,24),0,Date::ITALY),DateTime.new0(Rational.new!(7286969,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1938,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7286969,3),0,Date::ITALY),DateTime.new0(Rational.new!(58300001,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1938,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58300001,24),0,Date::ITALY),DateTime.new0(Rational.new!(7288046,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1939,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7288046,3),0,Date::ITALY),DateTime.new0(Rational.new!(58308737,24),0,Date::ITALY),-18000,0,:'PET')}
add_period(1939,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58308737,24),0,Date::ITALY),DateTime.new0(Rational.new!(7289138,3),0,Date::ITALY),-18000,3600,:'PEST')}
add_period(1940,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7289138,3),0,Date::ITALY),504939600,-18000,0,:'PET')}
add_period(1986,1) {TimezonePeriod.new(504939600,512712000,-18000,3600,:'PEST')}
add_period(1986,4) {TimezonePeriod.new(512712000,536475600,-18000,0,:'PET')}
add_period(1987,1) {TimezonePeriod.new(536475600,544248000,-18000,3600,:'PEST')}
add_period(1987,4) {TimezonePeriod.new(544248000,631170000,-18000,0,:'PET')}
add_period(1990,1) {TimezonePeriod.new(631170000,638942400,-18000,3600,:'PEST')}
add_period(1990,4) {TimezonePeriod.new(638942400,757400400,-18000,0,:'PET')}
add_period(1994,1) {TimezonePeriod.new(757400400,765172800,-18000,3600,:'PEST')}
add_period(1994,4) {TimezonePeriod.new(765172800,nil,-18000,0,:'PET')}
end
end
end
end
