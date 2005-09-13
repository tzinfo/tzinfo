require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DE < Country #:nodoc:
setup
set_code('DE')
set_name('Germany')
add_zone('Europe/Berlin')
zones_added
end
end
end
