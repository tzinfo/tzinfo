require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BE < Country #:nodoc:
setup
set_code('BE')
set_name('Belgium')
add_zone('Europe/Brussels')
zones_added
end
end
end
