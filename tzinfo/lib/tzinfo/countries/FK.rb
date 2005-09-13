require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FK < Country #:nodoc:
setup
set_code('FK')
set_name('Falkland Islands')
add_zone('Atlantic/Stanley')
zones_added
end
end
end
