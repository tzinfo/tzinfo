require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ZA < Country #:nodoc:
setup
set_code('ZA')
set_name('South Africa')
add_zone('Africa/Johannesburg')
zones_added
end
end
end
