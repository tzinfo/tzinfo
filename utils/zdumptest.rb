#!/usr/bin/ruby

# Reads zdump formatted lines from stdin. Uses the UTC time in the zdump line
# to calculate the local time and zone identifier using TZInfo. If there is
# a difference, a message is output to stdout.

require '../tzinfo/lib/tzinfo'

include TZInfo

def resolve_ambiguity(periods, identifier, tzi_period)
  # Attempt to resolve by just the identifier.
  result = periods.select {|period| period.zone_identifier.to_s == identifier}

  if result.length > 1
    # No observable difference. Resolve by finding the actual period
    # no the time to be in based on the utc time.
    result.select {|period| period == tzi_period}
  else
    result
  end
end

STDIN.each {|line|
 if line =~ /^([^\s]+)\s+([A-z][a-z]{2}\s[A-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s[0-9]+)\s[A-Z]+\s=\s([A-z][a-z]{2}\s[A-z][a-z]{2}\s+[0-9]+\s[0-9]+:[0-9]+:[0-9]+\s[0-9]+)\s([A-Za-z0-9+\-]+)\sisdst=([01])/ then
   begin
     zone_id = $1
     zone = Timezone.get(zone_id)
     utc = DateTime.parse($2)
     local = DateTime.parse($3)
     identifier = $4
     is_dst = $5 == '1'
   
     tzi_local = zone.utc_to_local(utc)
     tzi_period = zone.period_for_utc(utc)
     tzi_identifier = tzi_period.zone_identifier
     tzi_is_dst = tzi_period.dst?
   
     if zone.identifier != zone_id || tzi_local != local || tzi_identifier.to_s != identifier || tzi_is_dst != is_dst
       puts "zdump:         #{zone_id} #{utc} UTC #{local} #{identifier} is_dst=#{is_dst ? '1' : '0'}"
       puts "tzinfo (u->l): #{zone.identifier} #{utc} UTC #{tzi_local} #{tzi_identifier} is_dst=#{tzi_is_dst ? '1' : '0'}"
     end

     tzi_utc = zone.local_to_utc(local, is_dst) {|periods| resolve_ambiguity(periods, identifier, tzi_period)}
     tzi_local_identifier = (zone.period_for_local(local, is_dst) {|periods| resolve_ambiguity(periods,identifier, tzi_period)}).zone_identifier

     if tzi_utc != utc || tzi_local_identifier.to_s != identifier
       puts "zdump:         #{zone_id} #{utc} UTC #{local} #{identifier}"
       puts "tzinfo (l->u): #{zone.identifier} #{tzi_utc} UTC #{local} #{tzi_local_identifier}"
     end

   rescue InvalidTimezoneIdentifier
     puts "Unrecognized timezone: #$1"
   rescue PeriodNotFound
     puts "Period not found for utc: #{utc}"
   rescue AmbiguousTime
     puts "Ambiguous local time: #{local}"
   rescue StandardError => e
     puts "Error: #{e}"     
   end
 end
}
