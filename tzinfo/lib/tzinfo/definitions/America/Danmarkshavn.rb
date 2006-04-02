require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module America #:nodoc:
class Danmarkshavn < Timezone #:nodoc:
setup
set_identifier('America/Danmarkshavn')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(653689589,270),0,Date::ITALY),-4480,0,:LMT)}
add_period(1916,7) {TimezonePeriod.new(DateTime.new0(Rational.new!(653689589,270),0,Date::ITALY),323845200,-10800,0,:WGT)}
add_period(1980,4) {TimezonePeriod.new(323845200,338950800,-10800,3600,:WGST)}
add_period(1980,9) {TimezonePeriod.new(338950800,354675600,-10800,0,:WGT)}
add_period(1981,3) {TimezonePeriod.new(354675600,370400400,-10800,3600,:WGST)}
add_period(1981,9) {TimezonePeriod.new(370400400,386125200,-10800,0,:WGT)}
add_period(1982,3) {TimezonePeriod.new(386125200,401850000,-10800,3600,:WGST)}
add_period(1982,9) {TimezonePeriod.new(401850000,417574800,-10800,0,:WGT)}
add_period(1983,3) {TimezonePeriod.new(417574800,433299600,-10800,3600,:WGST)}
add_period(1983,9) {TimezonePeriod.new(433299600,449024400,-10800,0,:WGT)}
add_period(1984,3) {TimezonePeriod.new(449024400,465354000,-10800,3600,:WGST)}
add_period(1984,9) {TimezonePeriod.new(465354000,481078800,-10800,0,:WGT)}
add_period(1985,3) {TimezonePeriod.new(481078800,496803600,-10800,3600,:WGST)}
add_period(1985,9) {TimezonePeriod.new(496803600,512528400,-10800,0,:WGT)}
add_period(1986,3) {TimezonePeriod.new(512528400,528253200,-10800,3600,:WGST)}
add_period(1986,9) {TimezonePeriod.new(528253200,543978000,-10800,0,:WGT)}
add_period(1987,3) {TimezonePeriod.new(543978000,559702800,-10800,3600,:WGST)}
add_period(1987,9) {TimezonePeriod.new(559702800,575427600,-10800,0,:WGT)}
add_period(1988,3) {TimezonePeriod.new(575427600,591152400,-10800,3600,:WGST)}
add_period(1988,9) {TimezonePeriod.new(591152400,606877200,-10800,0,:WGT)}
add_period(1989,3) {TimezonePeriod.new(606877200,622602000,-10800,3600,:WGST)}
add_period(1989,9) {TimezonePeriod.new(622602000,638326800,-10800,0,:WGT)}
add_period(1990,3) {TimezonePeriod.new(638326800,654656400,-10800,3600,:WGST)}
add_period(1990,9) {TimezonePeriod.new(654656400,670381200,-10800,0,:WGT)}
add_period(1991,3) {TimezonePeriod.new(670381200,686106000,-10800,3600,:WGST)}
add_period(1991,9) {TimezonePeriod.new(686106000,701830800,-10800,0,:WGT)}
add_period(1992,3) {TimezonePeriod.new(701830800,717555600,-10800,3600,:WGST)}
add_period(1992,9) {TimezonePeriod.new(717555600,733280400,-10800,0,:WGT)}
add_period(1993,3) {TimezonePeriod.new(733280400,749005200,-10800,3600,:WGST)}
add_period(1993,9) {TimezonePeriod.new(749005200,764730000,-10800,0,:WGT)}
add_period(1994,3) {TimezonePeriod.new(764730000,780454800,-10800,3600,:WGST)}
add_period(1994,9) {TimezonePeriod.new(780454800,796179600,-10800,0,:WGT)}
add_period(1995,3) {TimezonePeriod.new(796179600,811904400,-10800,3600,:WGST)}
add_period(1995,9) {TimezonePeriod.new(811904400,820465200,-10800,0,:WGT)}
add_period(1996,1) {TimezonePeriod.new(820465200,nil,0,0,:GMT)}
end
end
end
end
