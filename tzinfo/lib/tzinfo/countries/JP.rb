require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class JP < Country #:nodoc:
setup
set_code('JP')
set_name('Japan')
add_zone('Asia/Tokyo')
zones_added
end
end
end
