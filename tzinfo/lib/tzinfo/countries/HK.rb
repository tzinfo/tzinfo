require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class HK < Country #:nodoc:
setup
set_code('HK')
set_name('Hong Kong')
add_zone('Asia/Hong_Kong')
zones_added
end
end
end
