require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TW < Country #:nodoc:
setup
set_code('TW')
set_name('Taiwan')
add_zone('Asia/Taipei')
zones_added
end
end
end
