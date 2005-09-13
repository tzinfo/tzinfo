require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MN < Country #:nodoc:
setup
set_code('MN')
set_name('Mongolia')
add_zone('Asia/Choibalsan')
add_zone('Asia/Ulaanbaatar')
add_zone('Asia/Hovd')
zones_added
end
end
end
