require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class GL < Country #:nodoc:
setup
set_code('GL')
set_name('Greenland')
add_zone('America/Danmarkshavn')
add_zone('America/Thule')
add_zone('America/Godthab')
add_zone('America/Scoresbysund')
zones_added
end
end
end
