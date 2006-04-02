require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PH < Country #:nodoc:
setup
set_code('PH')
set_name('Philippines')
add_zone('Asia/Manila')
zones_added
end
end
end
