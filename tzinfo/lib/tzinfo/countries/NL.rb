require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NL < Country #:nodoc:
setup
set_code('NL')
set_name('Netherlands')
add_zone('Europe/Amsterdam')
zones_added
end
end
end
