require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AR < Country #:nodoc:
setup
set_code('AR')
set_name('Argentina')
add_zone('America/Argentina/Mendoza')
add_zone('America/Argentina/Buenos_Aires')
add_zone('America/Argentina/La_Rioja')
add_zone('America/Argentina/San_Juan')
add_zone('America/Argentina/Jujuy')
add_zone('America/Argentina/Ushuaia')
add_zone('America/Argentina/Rio_Gallegos')
add_zone('America/Argentina/Cordoba')
add_zone('America/Argentina/Catamarca')
add_zone('America/Argentina/Tucuman')
zones_added
end
end
end
