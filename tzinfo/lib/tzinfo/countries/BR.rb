require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class BR < Country #:nodoc:
setup
set_code('BR')
set_name('Brazil')
add_zone('America/Porto_Velho')
add_zone('America/Bahia')
add_zone('America/Boa_Vista')
add_zone('America/Noronha')
add_zone('America/Eirunepe')
add_zone('America/Cuiaba')
add_zone('America/Campo_Grande')
add_zone('America/Rio_Branco')
add_zone('America/Manaus')
add_zone('America/Araguaina')
add_zone('America/Maceio')
add_zone('America/Recife')
add_zone('America/Sao_Paulo')
add_zone('America/Belem')
add_zone('America/Fortaleza')
zones_added
end
end
end
