require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class CL < Country #:nodoc:
setup
set_code('CL')
set_name('Chile')
add_zone('Pacific/Easter')
add_zone('America/Santiago')
zones_added
end
end
end
