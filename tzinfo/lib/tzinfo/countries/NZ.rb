require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NZ < Country #:nodoc:
setup
set_code('NZ')
set_name('New Zealand')
add_zone('Pacific/Chatham')
add_zone('Pacific/Auckland')
zones_added
end
end
end
