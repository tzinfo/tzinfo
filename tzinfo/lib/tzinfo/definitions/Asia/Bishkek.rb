require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Bishkek < Timezone #:nodoc:
setup
set_identifier('Asia/Bishkek')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(4363033127,1800),0,Date::ITALY),17904,0,:LMT)}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(4363033127,1800),0,Date::ITALY),DateTime.new0(Rational.new!(58227559,24),0,Date::ITALY),18000,0,:FRUT)}
add_period(1930,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58227559,24),0,Date::ITALY),354909600,21600,0,:FRUT)}
add_period(1981,3) {TimezonePeriod.new(354909600,370717200,21600,3600,:FRUST)}
add_period(1981,9) {TimezonePeriod.new(370717200,386445600,21600,0,:FRUT)}
add_period(1982,3) {TimezonePeriod.new(386445600,402253200,21600,3600,:FRUST)}
add_period(1982,9) {TimezonePeriod.new(402253200,417981600,21600,0,:FRUT)}
add_period(1983,3) {TimezonePeriod.new(417981600,433789200,21600,3600,:FRUST)}
add_period(1983,9) {TimezonePeriod.new(433789200,449604000,21600,0,:FRUT)}
add_period(1984,3) {TimezonePeriod.new(449604000,465336000,21600,3600,:FRUST)}
add_period(1984,9) {TimezonePeriod.new(465336000,481060800,21600,0,:FRUT)}
add_period(1985,3) {TimezonePeriod.new(481060800,496785600,21600,3600,:FRUST)}
add_period(1985,9) {TimezonePeriod.new(496785600,512510400,21600,0,:FRUT)}
add_period(1986,3) {TimezonePeriod.new(512510400,528235200,21600,3600,:FRUST)}
add_period(1986,9) {TimezonePeriod.new(528235200,543960000,21600,0,:FRUT)}
add_period(1987,3) {TimezonePeriod.new(543960000,559684800,21600,3600,:FRUST)}
add_period(1987,9) {TimezonePeriod.new(559684800,575409600,21600,0,:FRUT)}
add_period(1988,3) {TimezonePeriod.new(575409600,591134400,21600,3600,:FRUST)}
add_period(1988,9) {TimezonePeriod.new(591134400,606859200,21600,0,:FRUT)}
add_period(1989,3) {TimezonePeriod.new(606859200,622584000,21600,3600,:FRUST)}
add_period(1989,9) {TimezonePeriod.new(622584000,638308800,21600,0,:FRUT)}
add_period(1990,3) {TimezonePeriod.new(638308800,654638400,21600,3600,:FRUST)}
add_period(1990,9) {TimezonePeriod.new(654638400,670363200,21600,0,:FRUT)}
add_period(1991,3) {TimezonePeriod.new(670363200,683582400,18000,3600,:FRUST)}
add_period(1991,8) {TimezonePeriod.new(683582400,703018800,18000,0,:KGT)}
add_period(1992,4) {TimezonePeriod.new(703018800,717530400,18000,3600,:KGST)}
add_period(1992,9) {TimezonePeriod.new(717530400,734468400,18000,0,:KGT)}
add_period(1993,4) {TimezonePeriod.new(734468400,748980000,18000,3600,:KGST)}
add_period(1993,9) {TimezonePeriod.new(748980000,765918000,18000,0,:KGT)}
add_period(1994,4) {TimezonePeriod.new(765918000,780429600,18000,3600,:KGST)}
add_period(1994,9) {TimezonePeriod.new(780429600,797367600,18000,0,:KGT)}
add_period(1995,4) {TimezonePeriod.new(797367600,811879200,18000,3600,:KGST)}
add_period(1995,9) {TimezonePeriod.new(811879200,828817200,18000,0,:KGT)}
add_period(1996,4) {TimezonePeriod.new(828817200,843933600,18000,3600,:KGST)}
add_period(1996,9) {TimezonePeriod.new(843933600,859671000,18000,0,:KGT)}
add_period(1997,3) {TimezonePeriod.new(859671000,877811400,18000,3600,:KGST)}
add_period(1997,10) {TimezonePeriod.new(877811400,891120600,18000,0,:KGT)}
add_period(1998,3) {TimezonePeriod.new(891120600,909261000,18000,3600,:KGST)}
add_period(1998,10) {TimezonePeriod.new(909261000,922570200,18000,0,:KGT)}
add_period(1999,3) {TimezonePeriod.new(922570200,941315400,18000,3600,:KGST)}
add_period(1999,10) {TimezonePeriod.new(941315400,954019800,18000,0,:KGT)}
add_period(2000,3) {TimezonePeriod.new(954019800,972765000,18000,3600,:KGST)}
add_period(2000,10) {TimezonePeriod.new(972765000,985469400,18000,0,:KGT)}
add_period(2001,3) {TimezonePeriod.new(985469400,1004214600,18000,3600,:KGST)}
add_period(2001,10) {TimezonePeriod.new(1004214600,1017523800,18000,0,:KGT)}
add_period(2002,3) {TimezonePeriod.new(1017523800,1035664200,18000,3600,:KGST)}
add_period(2002,10) {TimezonePeriod.new(1035664200,1048973400,18000,0,:KGT)}
add_period(2003,3) {TimezonePeriod.new(1048973400,1067113800,18000,3600,:KGST)}
add_period(2003,10) {TimezonePeriod.new(1067113800,1080423000,18000,0,:KGT)}
add_period(2004,3) {TimezonePeriod.new(1080423000,1099168200,18000,3600,:KGST)}
add_period(2004,10) {TimezonePeriod.new(1099168200,1111872600,18000,0,:KGT)}
add_period(2005,3) {TimezonePeriod.new(1111872600,1123783200,18000,3600,:KGST)}
add_period(2005,8) {TimezonePeriod.new(1123783200,nil,21600,0,:KGT)}
end
end
end
end
