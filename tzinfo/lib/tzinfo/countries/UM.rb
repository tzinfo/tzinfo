require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class UM < Country #:nodoc:
setup
set_code('UM')
set_name('US minor outlying islands')
add_zone('Pacific/Wake')
add_zone('Pacific/Midway')
add_zone('Pacific/Johnston')
zones_added
end
end
end
