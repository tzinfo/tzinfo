require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CH < Country #:nodoc:
setup
set_code('CH')
set_name('Switzerland')
add_zone('Europe/Zurich')
zones_added
end
end
end
