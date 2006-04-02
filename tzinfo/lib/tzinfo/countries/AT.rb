require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AT < Country #:nodoc:
setup
set_code('AT')
set_name('Austria')
add_zone('Europe/Vienna')
zones_added
end
end
end
