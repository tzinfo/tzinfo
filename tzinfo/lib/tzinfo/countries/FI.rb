require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FI < Country #:nodoc:
setup
set_code('FI')
set_name('Finland')
add_zone('Europe/Helsinki')
zones_added
end
end
end
