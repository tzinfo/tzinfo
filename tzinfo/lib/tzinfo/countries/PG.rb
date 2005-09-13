require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PG < Country #:nodoc:
setup
set_code('PG')
set_name('Papua New Guinea')
add_zone('Pacific/Port_Moresby')
zones_added
end
end
end
