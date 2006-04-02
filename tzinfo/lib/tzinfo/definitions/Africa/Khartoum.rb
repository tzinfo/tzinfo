require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Khartoum < Timezone #:nodoc:
setup
set_identifier('Africa/Khartoum')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(3275562253,1350),0,Date::ITALY),7808,0,:LMT)}
add_period(1930,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(3275562253,1350),0,Date::ITALY),10360800,7200,0,:CAT)}
add_period(1970,4) {TimezonePeriod.new(10360800,24786000,7200,3600,:CAST)}
add_period(1970,10) {TimezonePeriod.new(24786000,41810400,7200,0,:CAT)}
add_period(1971,4) {TimezonePeriod.new(41810400,56322000,7200,3600,:CAST)}
add_period(1971,10) {TimezonePeriod.new(56322000,73432800,7200,0,:CAT)}
add_period(1972,4) {TimezonePeriod.new(73432800,87944400,7200,3600,:CAST)}
add_period(1972,10) {TimezonePeriod.new(87944400,104882400,7200,0,:CAT)}
add_period(1973,4) {TimezonePeriod.new(104882400,119480400,7200,3600,:CAST)}
add_period(1973,10) {TimezonePeriod.new(119480400,136332000,7200,0,:CAT)}
add_period(1974,4) {TimezonePeriod.new(136332000,151016400,7200,3600,:CAST)}
add_period(1974,10) {TimezonePeriod.new(151016400,167781600,7200,0,:CAT)}
add_period(1975,4) {TimezonePeriod.new(167781600,182552400,7200,3600,:CAST)}
add_period(1975,10) {TimezonePeriod.new(182552400,199231200,7200,0,:CAT)}
add_period(1976,4) {TimezonePeriod.new(199231200,214174800,7200,3600,:CAST)}
add_period(1976,10) {TimezonePeriod.new(214174800,230680800,7200,0,:CAT)}
add_period(1977,4) {TimezonePeriod.new(230680800,245710800,7200,3600,:CAST)}
add_period(1977,10) {TimezonePeriod.new(245710800,262735200,7200,0,:CAT)}
add_period(1978,4) {TimezonePeriod.new(262735200,277246800,7200,3600,:CAST)}
add_period(1978,10) {TimezonePeriod.new(277246800,294184800,7200,0,:CAT)}
add_period(1979,4) {TimezonePeriod.new(294184800,308782800,7200,3600,:CAST)}
add_period(1979,10) {TimezonePeriod.new(308782800,325634400,7200,0,:CAT)}
add_period(1980,4) {TimezonePeriod.new(325634400,340405200,7200,3600,:CAST)}
add_period(1980,10) {TimezonePeriod.new(340405200,357084000,7200,0,:CAT)}
add_period(1981,4) {TimezonePeriod.new(357084000,371941200,7200,3600,:CAST)}
add_period(1981,10) {TimezonePeriod.new(371941200,388533600,7200,0,:CAT)}
add_period(1982,4) {TimezonePeriod.new(388533600,403477200,7200,3600,:CAST)}
add_period(1982,10) {TimezonePeriod.new(403477200,419983200,7200,0,:CAT)}
add_period(1983,4) {TimezonePeriod.new(419983200,435013200,7200,3600,:CAST)}
add_period(1983,10) {TimezonePeriod.new(435013200,452037600,7200,0,:CAT)}
add_period(1984,4) {TimezonePeriod.new(452037600,466635600,7200,3600,:CAST)}
add_period(1984,10) {TimezonePeriod.new(466635600,483487200,7200,0,:CAT)}
add_period(1985,4) {TimezonePeriod.new(483487200,498171600,7200,3600,:CAST)}
add_period(1985,10) {TimezonePeriod.new(498171600,947930400,7200,0,:CAT)}
add_period(2000,1) {TimezonePeriod.new(947930400,nil,10800,0,:EAT)}
end
end
end
end
