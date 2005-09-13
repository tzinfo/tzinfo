require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CD < Country #:nodoc:
setup
set_code('CD')
set_name('Congo (Dem. Rep.)')
add_zone('Africa/Kinshasa')
add_zone('Africa/Lubumbashi')
zones_added
end
end
end
