require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GB < Country #:nodoc:
setup
set_code('GB')
set_name('Britain (UK)')
add_zone('Europe/London')
zones_added
end
end
end
