require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MH < Country #:nodoc:
setup
set_code('MH')
set_name('Marshall Islands')
add_zone('Pacific/Kwajalein')
add_zone('Pacific/Majuro')
zones_added
end
end
end
