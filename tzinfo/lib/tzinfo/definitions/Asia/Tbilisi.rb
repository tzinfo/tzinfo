require 'tzinfo/timezone'
module TZInfo
module Definitions #:nodoc:
module Asia #:nodoc:
class Tbilisi < Timezone #:nodoc:
setup
set_identifier('Asia/Tbilisi')
add_unbounded_start_period {TimezonePeriod.new(nil,DateTime.new0(Rational.new!(52006652111,21600),0,Date::ITALY),10756,0,:'LMT')}
add_period(1879,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(52006652111,21600),0,Date::ITALY),DateTime.new0(Rational.new!(52356399311,21600),0,Date::ITALY),10756,0,:'TBMT')}
add_period(1924,5) {TimezonePeriod.new(DateTime.new0(Rational.new!(52356399311,21600),0,Date::ITALY),DateTime.new0(Rational.new!(19487187,8),0,Date::ITALY),10800,0,:'TBIT')}
add_period(1957,2) {TimezonePeriod.new(DateTime.new0(Rational.new!(19487187,8),0,Date::ITALY),DateTime.new0(Rational.new!(7334086,3),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1981,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7334086,3),0,Date::ITALY),DateTime.new0(Rational.new!(58677079,24),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1981,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58677079,24),0,Date::ITALY),DateTime.new0(Rational.new!(7335181,3),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1982,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7335181,3),0,Date::ITALY),DateTime.new0(Rational.new!(58685839,24),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1982,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58685839,24),0,Date::ITALY),DateTime.new0(Rational.new!(7336276,3),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1983,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7336276,3),0,Date::ITALY),DateTime.new0(Rational.new!(58694599,24),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1983,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58694599,24),0,Date::ITALY),DateTime.new0(Rational.new!(7337374,3),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1984,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7337374,3),0,Date::ITALY),DateTime.new0(Rational.new!(29351681,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1984,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29351681,12),0,Date::ITALY),DateTime.new0(Rational.new!(29353865,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1985,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29353865,12),0,Date::ITALY),DateTime.new0(Rational.new!(29356049,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1985,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29356049,12),0,Date::ITALY),DateTime.new0(Rational.new!(29358233,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1986,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29358233,12),0,Date::ITALY),DateTime.new0(Rational.new!(29360417,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1986,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29360417,12),0,Date::ITALY),DateTime.new0(Rational.new!(29362601,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1987,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29362601,12),0,Date::ITALY),DateTime.new0(Rational.new!(29364785,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1987,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29364785,12),0,Date::ITALY),DateTime.new0(Rational.new!(29366969,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1988,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29366969,12),0,Date::ITALY),DateTime.new0(Rational.new!(29369153,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1988,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29369153,12),0,Date::ITALY),DateTime.new0(Rational.new!(29371337,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1989,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29371337,12),0,Date::ITALY),DateTime.new0(Rational.new!(29373521,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1989,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29373521,12),0,Date::ITALY),DateTime.new0(Rational.new!(29375705,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1990,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29375705,12),0,Date::ITALY),DateTime.new0(Rational.new!(29377973,12),0,Date::ITALY),14400,3600,:'TBIST')}
add_period(1990,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(29377973,12),0,Date::ITALY),DateTime.new0(Rational.new!(29380157,12),0,Date::ITALY),14400,0,:'TBIT')}
add_period(1991,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(29380157,12),0,Date::ITALY),DateTime.new0(Rational.new!(7345066,3),0,Date::ITALY),10800,3600,:'TBIST')}
add_period(1991,4) {TimezonePeriod.new(DateTime.new0(Rational.new!(7345066,3),0,Date::ITALY),DateTime.new0(Rational.new!(58764683,24),0,Date::ITALY),10800,3600,:'GET')}
add_period(1991,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58764683,24),0,Date::ITALY),DateTime.new0(Rational.new!(19588979,8),0,Date::ITALY),10800,0,:'GET')}
add_period(1991,12) {TimezonePeriod.new(DateTime.new0(Rational.new!(19588979,8),0,Date::ITALY),DateTime.new0(Rational.new!(19589683,8),0,Date::ITALY),10800,0,:'GET')}
add_period(1992,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19589683,8),0,Date::ITALY),DateTime.new0(Rational.new!(7346677,3),0,Date::ITALY),10800,3600,:'GEST')}
add_period(1992,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7346677,3),0,Date::ITALY),DateTime.new0(Rational.new!(19592595,8),0,Date::ITALY),10800,0,:'GET')}
add_period(1993,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19592595,8),0,Date::ITALY),DateTime.new0(Rational.new!(7347769,3),0,Date::ITALY),10800,3600,:'GEST')}
add_period(1993,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7347769,3),0,Date::ITALY),DateTime.new0(Rational.new!(19595507,8),0,Date::ITALY),10800,0,:'GET')}
add_period(1994,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(19595507,8),0,Date::ITALY),DateTime.new0(Rational.new!(7348861,3),0,Date::ITALY),10800,3600,:'GEST')}
add_period(1994,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(7348861,3),0,Date::ITALY),DateTime.new0(Rational.new!(7349407,3),0,Date::ITALY),14400,0,:'GET')}
add_period(1995,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7349407,3),0,Date::ITALY),DateTime.new0(Rational.new!(58799623,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(1995,9) {TimezonePeriod.new(DateTime.new0(Rational.new!(58799623,24),0,Date::ITALY),DateTime.new0(Rational.new!(7350520,3),0,Date::ITALY),14400,0,:'GET')}
add_period(1996,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7350520,3),0,Date::ITALY),DateTime.new0(Rational.new!(58809199,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(1996,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58809199,24),0,Date::ITALY),DateTime.new0(Rational.new!(58812895,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(1997,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58812895,24),0,Date::ITALY),DateTime.new0(Rational.new!(58817935,24),0,Date::ITALY),14400,3600,:'GET')}
add_period(1997,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58817935,24),0,Date::ITALY),DateTime.new0(Rational.new!(7352704,3),0,Date::ITALY),14400,0,:'GET')}
add_period(1998,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7352704,3),0,Date::ITALY),DateTime.new0(Rational.new!(58826671,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(1998,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58826671,24),0,Date::ITALY),DateTime.new0(Rational.new!(7353796,3),0,Date::ITALY),14400,0,:'GET')}
add_period(1999,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7353796,3),0,Date::ITALY),DateTime.new0(Rational.new!(58835575,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(1999,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58835575,24),0,Date::ITALY),DateTime.new0(Rational.new!(7354888,3),0,Date::ITALY),14400,0,:'GET')}
add_period(2000,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7354888,3),0,Date::ITALY),DateTime.new0(Rational.new!(58844311,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(2000,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58844311,24),0,Date::ITALY),DateTime.new0(Rational.new!(7355980,3),0,Date::ITALY),14400,0,:'GET')}
add_period(2001,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7355980,3),0,Date::ITALY),DateTime.new0(Rational.new!(58853047,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(2001,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58853047,24),0,Date::ITALY),DateTime.new0(Rational.new!(7357093,3),0,Date::ITALY),14400,0,:'GET')}
add_period(2002,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7357093,3),0,Date::ITALY),DateTime.new0(Rational.new!(58861783,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(2002,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58861783,24),0,Date::ITALY),DateTime.new0(Rational.new!(7358185,3),0,Date::ITALY),14400,0,:'GET')}
add_period(2003,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7358185,3),0,Date::ITALY),DateTime.new0(Rational.new!(58870519,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(2003,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58870519,24),0,Date::ITALY),DateTime.new0(Rational.new!(7359277,3),0,Date::ITALY),14400,0,:'GET')}
add_period(2004,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(7359277,3),0,Date::ITALY),DateTime.new0(Rational.new!(58876399,24),0,Date::ITALY),14400,3600,:'GEST')}
add_period(2004,6) {TimezonePeriod.new(DateTime.new0(Rational.new!(58876399,24),0,Date::ITALY),DateTime.new0(Rational.new!(58879427,24),0,Date::ITALY),10800,3600,:'GET')}
add_period(2004,10) {TimezonePeriod.new(DateTime.new0(Rational.new!(58879427,24),0,Date::ITALY),DateTime.new0(Rational.new!(58882955,24),0,Date::ITALY),10800,0,:'GET')}
add_period(2005,3) {TimezonePeriod.new(DateTime.new0(Rational.new!(58882955,24),0,Date::ITALY),nil,14400,0,:'GET')}
end
end
end
end
