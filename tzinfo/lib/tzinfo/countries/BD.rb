require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BD < Country #:nodoc:
setup
set_code('BD')
set_name('Bangladesh')
add_zone('Asia/Dhaka')
zones_added
end
end
end
