require 'tzinfo/country'
module TZInfo #:nodoc:
module Countries #:nodoc:
class AU < Country #:nodoc:
setup
set_code('AU')
set_name('Australia')
add_zone('Australia/Lindeman')
add_zone('Australia/Sydney')
add_zone('Australia/Adelaide')
add_zone('Australia/Darwin')
add_zone('Australia/Hobart')
add_zone('Australia/Perth')
add_zone('Australia/Broken_Hill')
add_zone('Australia/Currie')
add_zone('Australia/Brisbane')
add_zone('Australia/Lord_Howe')
add_zone('Australia/Melbourne')
zones_added
end
end
end
