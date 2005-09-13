require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class FR < Country #:nodoc:
setup
set_code('FR')
set_name('France')
add_zone('Europe/Paris')
zones_added
end
end
end
