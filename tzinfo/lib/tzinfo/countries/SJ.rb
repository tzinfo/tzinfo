require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class SJ < Country #:nodoc:
setup
set_code('SJ')
set_name('Svalbard & Jan Mayen')
add_zone('Arctic/Longyearbyen')
add_zone('Atlantic/Jan_Mayen')
zones_added
end
end
end
