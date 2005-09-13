require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class PR < Country #:nodoc:
setup
set_code('PR')
set_name('Puerto Rico')
add_zone('America/Puerto_Rico')
zones_added
end
end
end
