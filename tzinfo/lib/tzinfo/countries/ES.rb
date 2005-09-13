require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ES < Country #:nodoc:
setup
set_code('ES')
set_name('Spain')
add_zone('Africa/Ceuta')
add_zone('Atlantic/Canary')
add_zone('Europe/Madrid')
zones_added
end
end
end
