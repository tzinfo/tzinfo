require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CN < Country #:nodoc:
setup
set_code('CN')
set_name('China')
add_zone('Asia/Kashgar')
add_zone('Asia/Shanghai')
add_zone('Asia/Urumqi')
add_zone('Asia/Chongqing')
add_zone('Asia/Harbin')
zones_added
end
end
end
