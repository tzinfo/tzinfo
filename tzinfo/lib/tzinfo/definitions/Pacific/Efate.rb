require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Pacific #:nodoc:
class Efate < Timezone #:nodoc:
setup
set_identifier('Pacific/Efate')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52259343101,21600),0,Date::ITALY),40396,0,:'LMT')}
add_period(1912,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(52259343101,21600),0,Date::ITALY),DateTime.new0(Rational.new!(58694449,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58694449,24),0,Date::ITALY),DateTime.new0(Rational.new!(2445784,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2445784,1),0,Date::ITALY),DateTime.new0(Rational.new!(58703905,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1984,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58703905,24),0,Date::ITALY),DateTime.new0(Rational.new!(2446148,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2446148,1),0,Date::ITALY),DateTime.new0(Rational.new!(58712089,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58712089,24),0,Date::ITALY),DateTime.new0(Rational.new!(2446512,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2446512,1),0,Date::ITALY),DateTime.new0(Rational.new!(58720825,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58720825,24),0,Date::ITALY),DateTime.new0(Rational.new!(2446883,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2446883,1),0,Date::ITALY),DateTime.new0(Rational.new!(58729561,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58729561,24),0,Date::ITALY),DateTime.new0(Rational.new!(2447247,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2447247,1),0,Date::ITALY),DateTime.new0(Rational.new!(58738297,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58738297,24),0,Date::ITALY),DateTime.new0(Rational.new!(2447611,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2447611,1),0,Date::ITALY),DateTime.new0(Rational.new!(58747033,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58747033,24),0,Date::ITALY),DateTime.new0(Rational.new!(2447975,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2447975,1),0,Date::ITALY),DateTime.new0(Rational.new!(58755769,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58755769,24),0,Date::ITALY),DateTime.new0(Rational.new!(2448339,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(2448339,1),0,Date::ITALY),DateTime.new0(Rational.new!(58764673,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1991,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58764673,24),0,Date::ITALY),DateTime.new0(Rational.new!(2448647,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1992,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2448647,1),0,Date::ITALY),DateTime.new0(Rational.new!(58774081,24),0,Date::ITALY),39600,0,:'VUT')}
add_period(1992,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58774081,24),0,Date::ITALY),DateTime.new0(Rational.new!(2449011,1),0,Date::ITALY),39600,3600,:'VUST')}
add_period(1993,1) {TimezonePeriod.new(DateTime.new0(Rational.new!(2449011,1),0,Date::ITALY),nil,39600,0,:'VUT')}
end
end
end
end
