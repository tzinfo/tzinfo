require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class IN < Country #:nodoc:
setup
set_code('IN')
set_name('India')
add_zone('Asia/Calcutta')
zones_added
end
end
end
