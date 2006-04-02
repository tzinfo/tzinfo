require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class EC < Country #:nodoc:
setup
set_code('EC')
set_name('Ecuador')
add_zone('Pacific/Galapagos')
add_zone('America/Guayaquil')
zones_added
end
end
end
