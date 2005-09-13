require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GR < Country #:nodoc:
setup
set_code('GR')
set_name('Greece')
add_zone('Europe/Athens')
zones_added
end
end
end
