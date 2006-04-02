require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KI < Country #:nodoc:
setup
set_code('KI')
set_name('Kiribati')
add_zone('Pacific/Tarawa')
add_zone('Pacific/Enderbury')
add_zone('Pacific/Kiritimati')
zones_added
end
end
end
