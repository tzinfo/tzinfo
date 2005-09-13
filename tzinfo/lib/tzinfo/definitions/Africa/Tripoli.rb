require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Africa #:nodoc:
class Tripoli < Timezone #:nodoc:
setup
set_identifier('Africa/Tripoli')
add_period(TimezonePeriod.new(nil,DateTime.new(1919,12,31,23,7,16),3164,0,:'LMT'))
add_period(TimezonePeriod.new(DateTime.new(1919,12,31,23,7,16),DateTime.new(1951,10,14,1,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1951,10,14,1,0,0),DateTime.new(1951,12,31,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1951,12,31,22,0,0),DateTime.new(1953,10,9,1,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1953,10,9,1,0,0),DateTime.new(1953,12,31,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1953,12,31,22,0,0),DateTime.new(1955,9,29,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1955,9,29,23,0,0),DateTime.new(1955,12,31,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1955,12,31,22,0,0),DateTime.new(1958,12,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1958,12,31,23,0,0),DateTime.new(1981,12,31,22,0,0),7200,0,:'EET'))
add_period(TimezonePeriod.new(DateTime.new(1981,12,31,22,0,0),DateTime.new(1982,3,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1982,3,31,23,0,0),DateTime.new(1982,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1982,9,30,22,0,0),DateTime.new(1983,3,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1983,3,31,23,0,0),DateTime.new(1983,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1983,9,30,22,0,0),DateTime.new(1984,3,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1984,3,31,23,0,0),DateTime.new(1984,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1984,9,30,22,0,0),DateTime.new(1985,4,5,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1985,4,5,23,0,0),DateTime.new(1985,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1985,9,30,22,0,0),DateTime.new(1986,4,3,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1986,4,3,23,0,0),DateTime.new(1986,10,2,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1986,10,2,22,0,0),DateTime.new(1987,3,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1987,3,31,23,0,0),DateTime.new(1987,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1987,9,30,22,0,0),DateTime.new(1988,3,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1988,3,31,23,0,0),DateTime.new(1988,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1988,9,30,22,0,0),DateTime.new(1989,3,31,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1989,3,31,23,0,0),DateTime.new(1989,9,30,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1989,9,30,22,0,0),DateTime.new(1990,5,3,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1990,5,3,23,0,0),DateTime.new(1996,9,29,22,0,0),7200,0,:'EET'))
add_period(TimezonePeriod.new(DateTime.new(1996,9,29,22,0,0),DateTime.new(1997,4,3,23,0,0),3600,0,:'CET'))
add_period(TimezonePeriod.new(DateTime.new(1997,4,3,23,0,0),DateTime.new(1997,10,3,22,0,0),3600,3600,:'CEST'))
add_period(TimezonePeriod.new(DateTime.new(1997,10,3,22,0,0),nil,7200,0,:'EET'))
end
end
end
end
