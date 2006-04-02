require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class ID < Country #:nodoc:
setup
set_code('ID')
set_name('Indonesia')
add_zone('Asia/Makassar')
add_zone('Asia/Pontianak')
add_zone('Asia/Jayapura')
add_zone('Asia/Jakarta')
zones_added
end
end
end
