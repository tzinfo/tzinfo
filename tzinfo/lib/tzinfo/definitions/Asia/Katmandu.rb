require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Katmandu < Timezone #:nodoc:
setup
set_identifier('Asia/Katmandu')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52322204081,21600),0,Date::ITALY),20476,0,:'LMT')}
add_period(1919,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52322204081,21600),0,Date::ITALY),504901800,19800,0,:'IST')}
add_period(1985,12) {TimezonePeriod.new(504901800,nil,20700,0,:'NPT')}
end
end
end
end
