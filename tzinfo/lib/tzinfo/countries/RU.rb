require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class RU < Country #:nodoc:
setup
set_code('RU')
set_name('Russia')
add_zone('Asia/Yekaterinburg')
add_zone('Europe/Moscow')
add_zone('Europe/Samara')
add_zone('Asia/Irkutsk')
add_zone('Asia/Anadyr')
add_zone('Asia/Yakutsk')
add_zone('Asia/Kamchatka')
add_zone('Asia/Sakhalin')
add_zone('Asia/Vladivostok')
add_zone('Asia/Omsk')
add_zone('Europe/Kaliningrad')
add_zone('Asia/Krasnoyarsk')
add_zone('Asia/Novosibirsk')
add_zone('Asia/Magadan')
zones_added
end
end
end
