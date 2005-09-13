require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class MY < Country #:nodoc:
setup
set_code('MY')
set_name('Malaysia')
add_zone('Asia/Kuching')
add_zone('Asia/Kuala_Lumpur')
zones_added
end
end
end
