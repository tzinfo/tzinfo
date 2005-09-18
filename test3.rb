#require 'tzinfo/definitions/Europe/London'
require 'tzinfo/definitions/Europe/london'
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
puts tz.period_for_utc(DateTime.new(2005,10,30,0,59,59)).zone_identifier.inspect
puts tz.utc_to_local(DateTime.new(2005,10,30,0,59,59))
puts tz.utc_to_local(DateTime.new(2005,10,30,1,00,0))

#puts tz.periods.class

puts tz.identifier

tz2 = Timezone.get('Europe/Paris')
puts tz2.identifier
puts tz2.period_for_utc(DateTime.new(2005,10,30,0,59,59)).zone_identifier.inspect

puts tz.identifier
puts tz.now
puts tz2.now


#puts tz.periods.inspect
#puts tz2.periods.inspect


puts '*'
puts Timezone.get('Etc/GMT').now
puts Timezone.get('Etc/GMT0').now


us = Country.get('US')
puts us.inspect
puts us.zone_names.inspect
#puts us.zones.inspect

gb = Country.get('GB')
puts gb.inspect
puts gb.code
puts gb.name
puts us.code
puts us.name
puts gb.to_s

puts tz.identifier
puts tz.name
puts tz

puts tz == Definitions::Europe::London.new

puts gb
puts gb == Countries::GB.new


tzp = TimezoneProxy.new('Europe/London')
puts tzp
puts tzp.inspect
puts tzp == tz
puts tzp.equal?(tz)
puts tzp.now
puts tzp.inspect
puts tz.utc_to_local(DateTime.new(2005,8,29,10,0,0))
puts tzp.utc_to_local(DateTime.new(2005,8,29,10,0,0))


#puts '^^'
#puts us.zones.inspect
#puts us.zones[5].inspect
#puts us.zones[5].now
#puts us.zones[5].current_period.zone_identifier

#puts Timezone.all.inspect
#puts Timezone.all[5].inspect
#puts Timezone.all[5].now
#puts Timezone.all[5].current_period.zone_identifier

['Pacific/Port_Moresby', 'America/Indiana/Marengo', 'Africa/Dar_es_Salaam', 'Antarctica/McMurdo', 'Antarctica/DumontDUrville'].each {|zone|
  puts Timezone.get(zone).to_s
}

