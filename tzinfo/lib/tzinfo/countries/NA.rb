require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class NA < Country #:nodoc:
setup
set_code('NA')
set_name('Namibia')
add_zone('Africa/Windhoek')
zones_added
end
end
end
