#require 'definitions/Europe/London'
require 'tzinfo/timezone'
require 'tzinfo/country'
include TZInfo

#tz = Definitions::Europe::London.instance
tz = Timezone.get('Europe/London')
puts tz.period_for_utc(DateTime.new(2005,8,29,10,0,0)).utc_start
puts tz.period_for_utc(DateTime.new(2005,1,29,10,0,0)).utc_start
puts tz.utc_to_local(DateTime.new(2005,8,29,10,0,0))
puts tz.utc_to_local(DateTime.new(2005,1,29,10,0,0))
puts tz.period_for_utc(DateTime.new(2105,1,29,10,0,0)).utc_end
puts tz.local_to_utc(DateTime.new(2005,8,29,10,0,0))
puts tz.local_to_utc(DateTime.new(2005,1,29,10,0,0))
puts tz.local_to_utc(DateTime.new(2005,3,27,0,59,59))
#puts tz.local_to_utc(DateTime.new(2005,3,27,1,0,0)) - does not exist
#puts tz.local_to_utc(DateTime.new(2005,3,27,1,0,1))
puts tz.local_to_utc(DateTime.new(2005,3,27,2,0,0))
puts tz.local_to_utc(DateTime.new(2005,10,30,1,59,59))
puts tz.local_to_utc(DateTime.new(2005,10,30,2,0,0))
puts tz.local_to_utc(DateTime.new(2005,10,30,2,0,1))
puts '-'
puts tz.period_for_utc(DateTime.new(2005,10,30,0,59,59)).utc_start
puts tz.utc_to_local(DateTime.new(2005,10,30,0,59,59))
puts tz.utc_to_local(DateTime.new(2005,10,30,1,00,0))

puts '*'

tz2 = Timezone.get('Australia/Sydney')
puts tz2.identifier
puts tz2.period_for_utc(DateTime.new(2005,9,29,11,0,0)).inspect
puts tz2.utc_to_local(DateTime.new(2005,8,29,11,0,0))
puts tz2.local_to_utc(DateTime.new(2005,8,29,21,0,0))
puts tz2.local_to_utc(DateTime.new(2005,3,27,1,55,00))
puts tz2.local_to_utc(DateTime.new(2005,3,27,2,59,59))
puts tz2.local_to_utc(DateTime.new(2005,3,27,3,0,0))
puts tz2.local_to_utc(DateTime.new(2005,10,30,1,55,0))
#puts tz2.local_to_utc(DateTime.new(2005,10,30,2,0,0)) - does not exist
#puts tz2.local_to_utc(DateTime.new(2005,10,30,2,0,1))
puts tz2.local_to_utc(DateTime.new(2005,10,30,3,0,0))
puts tz2.local_to_utc(DateTime.new(2005,10,30,3,0,1))

puts ':'

tz3 = Timezone.get('Etc/UTC')
puts tz3.utc_to_local(DateTime.new(2005,8,29,14,0,0))

tz4 = Timezone.get('Etc/Zulu')
puts tz4.utc_to_local(DateTime.new(2005,8,29,14,0,0))

puts '^'

tz5 = Timezone.get('Asia/Riyadh88')
puts tz5.utc_to_local(DateTime.new(1988,8,29,15,0,0))

puts '_'

us = Country.get('US')
puts us.inspect
puts us.zone_names
puts us.zones

all_codes = Country.all_codes
#puts all_codes.inspect
#puts Country.all.inspect
