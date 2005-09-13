require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PT < Country #:nodoc:
setup
set_code('PT')
set_name('Portugal')
add_zone('Europe/Lisbon')
add_zone('Atlantic/Azores')
add_zone('Atlantic/Madeira')
zones_added
end
end
end
