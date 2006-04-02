require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CZ < Country #:nodoc:
setup
set_code('CZ')
set_name('Czech Republic')
add_zone('Europe/Prague')
zones_added
end
end
end
