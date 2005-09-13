require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class TZ < Country #:nodoc:
setup
set_code('TZ')
set_name('Tanzania')
add_zone('Africa/Dar_es_Salaam')
zones_added
end
end
end
