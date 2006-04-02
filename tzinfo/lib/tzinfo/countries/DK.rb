require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class DK < Country #:nodoc:
setup
set_code('DK')
set_name('Denmark')
add_zone('Europe/Copenhagen')
zones_added
end
end
end
