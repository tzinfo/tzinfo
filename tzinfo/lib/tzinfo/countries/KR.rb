require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class KR < Country #:nodoc:
setup
set_code('KR')
set_name('Korea (South)')
add_zone('Asia/Seoul')
zones_added
end
end
end
