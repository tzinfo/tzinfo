require 'tzinfo/country_index_definition'

module TZInfo
  module Indexes
    module Countries
      include CountryIndexDefinition

      country 'AD', 'Andorra' do |c|
        c.timezone 'Europe/Andorra', Rational.new!(85,2), Rational.new!(91,60)
      end
      country 'AE', 'United Arab Emirates' do |c|
        c.timezone 'Asia/Dubai', Rational.new!(253,10), Rational.new!(553,10)
      end
      country 'AF', 'Afghanistan' do |c|
        c.timezone 'Asia/Kabul', Rational.new!(2071,60), Rational.new!(346,5)
      end
      country 'AG', 'Antigua & Barbuda' do |c|
        c.timezone 'America/Antigua', Rational.new!(341,20), Rational.new!(-309,5)
      end
      country 'AI', 'Anguilla' do |c|
        c.timezone 'America/Anguilla', Rational.new!(91,5), Rational.new!(-946,15)
      end
      country 'AL', 'Albania' do |c|
        c.timezone 'Europe/Tirane', Rational.new!(124,3), Rational.new!(119,6)
      end
      country 'AM', 'Armenia' do |c|
        c.timezone 'Asia/Yerevan', Rational.new!(2411,60), Rational.new!(89,2)
      end
      country 'AN', 'Netherlands Antilles' do |c|
        c.timezone 'America/Curacao', Rational.new!(731,60), Rational.new!(-69,1)
      end
      country 'AO', 'Angola' do |c|
        c.timezone 'Africa/Luanda', Rational.new!(-44,5), Rational.new!(397,30)
      end
      country 'AQ', 'Antarctica' do |c|
        c.timezone 'Antarctica/McMurdo', Rational.new!(-467,6), Rational.new!(833,5), 'McMurdo Station, Ross Island'
        c.timezone 'Antarctica/South_Pole', Rational.new!(-90,1), Rational.new!(0,1), 'Amundsen-Scott Station, South Pole'
        c.timezone 'Antarctica/Rothera', Rational.new!(-2027,30), Rational.new!(-1022,15), 'Rothera Station, Adelaide Island'
        c.timezone 'Antarctica/Palmer', Rational.new!(-324,5), Rational.new!(-641,10), 'Palmer Station, Anvers Island'
        c.timezone 'Antarctica/Mawson', Rational.new!(-338,5), Rational.new!(3773,60), 'Mawson Station, Holme Bay'
        c.timezone 'Antarctica/Davis', Rational.new!(-823,12), Rational.new!(2339,30), 'Davis Station, Vestfold Hills'
        c.timezone 'Antarctica/Casey', Rational.new!(-3977,60), Rational.new!(6631,60), 'Casey Station, Bailey Peninsula'
        c.timezone 'Antarctica/Vostok', Rational.new!(-392,5), Rational.new!(1069,10), 'Vostok Station, S Magnetic Pole'
        c.timezone 'Antarctica/DumontDUrville', Rational.new!(-200,3), Rational.new!(8401,60), 'Dumont-dUrville Base, Terre AdelieUrville Base, Terre Adelie'
        c.timezone 'Antarctica/Syowa', Rational.new!(-124211,1800), Rational.new!(3959,100), 'Syowa Station, E Ongul I'
      end
      country 'AR', 'Argentina' do |c|
        c.timezone 'America/Argentina/Buenos_Aires', Rational.new!(-173,5), Rational.new!(-1169,20), 'Buenos Aires (BA, CF)'
        c.timezone 'America/Argentina/Cordoba', Rational.new!(-157,5), Rational.new!(-3851,60), 'most locations (CB, CC, CN, ER, FM, LP, MN, NQ, RN, SA, SE, SF, SL)'
        c.timezone 'America/Argentina/Jujuy', Rational.new!(-1451,60), Rational.new!(-653,10), 'Jujuy (JY)'
        c.timezone 'America/Argentina/Tucuman', Rational.new!(-157,5), Rational.new!(-3851,60), 'Tucuman (TM)'
        c.timezone 'America/Argentina/Catamarca', Rational.new!(-427,15), Rational.new!(-3947,60), 'Catamarca (CT), Chubut (CH)'
        c.timezone 'America/Argentina/La_Rioja', Rational.new!(-883,30), Rational.new!(-1337,20), 'La Rioja (LR)'
        c.timezone 'America/Argentina/San_Juan', Rational.new!(-473,15), Rational.new!(-4111,60), 'San Juan (SJ)'
        c.timezone 'America/Argentina/Mendoza', Rational.new!(-1973,60), Rational.new!(-4129,60), 'Mendoza (MZ)'
        c.timezone 'America/Argentina/Rio_Gallegos', Rational.new!(-1549,30), Rational.new!(-4153,60), 'Santa Cruz (SC)'
        c.timezone 'America/Argentina/Ushuaia', Rational.new!(-274,5), Rational.new!(-683,10), 'Tierra del Fuego (TF)'
      end
      country 'AS', 'Samoa (American)' do |c|
        c.timezone 'Pacific/Pago_Pago', Rational.new!(-214,15), Rational.new!(-1707,10)
      end
      country 'AT', 'Austria' do |c|
        c.timezone 'Europe/Vienna', Rational.new!(2893,60), Rational.new!(49,3)
      end
      country 'AU', 'Australia' do |c|
        c.timezone 'Australia/Lord_Howe', Rational.new!(-631,20), Rational.new!(1909,12), 'Lord Howe Island'
        c.timezone 'Australia/Hobart', Rational.new!(-2573,60), Rational.new!(8839,60), 'Tasmania - most locations'
        c.timezone 'Australia/Currie', Rational.new!(-599,15), Rational.new!(2158,15), 'Tasmania - King Island'
        c.timezone 'Australia/Melbourne', Rational.new!(-2269,60), Rational.new!(4349,30), 'Victoria'
        c.timezone 'Australia/Sydney', Rational.new!(-508,15), Rational.new!(9073,60), 'New South Wales - most locations'
        c.timezone 'Australia/Broken_Hill', Rational.new!(-639,20), Rational.new!(2829,20), 'New South Wales - Yancowinna'
        c.timezone 'Australia/Brisbane', Rational.new!(-412,15), Rational.new!(4591,30), 'Queensland - most locations'
        c.timezone 'Australia/Lindeman', Rational.new!(-304,15), Rational.new!(149,1), 'Queensland - Holiday Islands'
        c.timezone 'Australia/Adelaide', Rational.new!(-419,12), Rational.new!(1663,12), 'South Australia'
        c.timezone 'Australia/Darwin', Rational.new!(-187,15), Rational.new!(785,6), 'Northern Territory'
        c.timezone 'Australia/Perth', Rational.new!(-639,20), Rational.new!(2317,20), 'Western Australia'
      end
      country 'AW', 'Aruba' do |c|
        c.timezone 'America/Aruba', Rational.new!(25,2), Rational.new!(-2069,30)
      end
      country 'AX', 'Aaland Islands' do |c|
        c.timezone 'Europe/Mariehamn', Rational.new!(601,10), Rational.new!(399,20)
      end
      country 'AZ', 'Azerbaijan' do |c|
        c.timezone 'Asia/Baku', Rational.new!(2423,60), Rational.new!(997,20)
      end
      country 'BA', 'Bosnia & Herzegovina' do |c|
        c.timezone 'Europe/Sarajevo', Rational.new!(658,15), Rational.new!(221,12)
      end
      country 'BB', 'Barbados' do |c|
        c.timezone 'America/Barbados', Rational.new!(131,10), Rational.new!(-3577,60)
      end
      country 'BD', 'Bangladesh' do |c|
        c.timezone 'Asia/Dhaka', Rational.new!(1423,60), Rational.new!(1085,12)
      end
      country 'BE', 'Belgium' do |c|
        c.timezone 'Europe/Brussels', Rational.new!(305,6), Rational.new!(13,3)
      end
      country 'BF', 'Burkina Faso' do |c|
        c.timezone 'Africa/Ouagadougou', Rational.new!(371,30), Rational.new!(-91,60)
      end
      country 'BG', 'Bulgaria' do |c|
        c.timezone 'Europe/Sofia', Rational.new!(2561,60), Rational.new!(1399,60)
      end
      country 'BH', 'Bahrain' do |c|
        c.timezone 'Asia/Bahrain', Rational.new!(1583,60), Rational.new!(607,12)
      end
      country 'BI', 'Burundi' do |c|
        c.timezone 'Africa/Bujumbura', Rational.new!(-203,60), Rational.new!(881,30)
      end
      country 'BJ', 'Benin' do |c|
        c.timezone 'Africa/Porto-Novo', Rational.new!(389,60), Rational.new!(157,60)
      end
      country 'BM', 'Bermuda' do |c|
        c.timezone 'Atlantic/Bermuda', Rational.new!(1937,60), Rational.new!(-1943,30)
      end
      country 'BN', 'Brunei' do |c|
        c.timezone 'Asia/Brunei', Rational.new!(74,15), Rational.new!(1379,12)
      end
      country 'BO', 'Bolivia' do |c|
        c.timezone 'America/La_Paz', Rational.new!(-33,2), Rational.new!(-1363,20)
      end
      country 'BR', 'Brazil' do |c|
        c.timezone 'America/Noronha', Rational.new!(-77,20), Rational.new!(-389,12), 'Atlantic islands'
        c.timezone 'America/Belem', Rational.new!(-29,20), Rational.new!(-2909,60), 'Amapa, E Para'
        c.timezone 'America/Fortaleza', Rational.new!(-223,60), Rational.new!(-77,2), 'NE Brazil (MA, PI, CE, RN, PB)'
        c.timezone 'America/Recife', Rational.new!(-161,20), Rational.new!(-349,10), 'Pernambuco'
        c.timezone 'America/Araguaina', Rational.new!(-36,5), Rational.new!(-241,5), 'Tocantins'
        c.timezone 'America/Maceio', Rational.new!(-29,3), Rational.new!(-2143,60), 'Alagoas, Sergipe'
        c.timezone 'America/Bahia', Rational.new!(-779,60), Rational.new!(-2311,60), 'Bahia'
        c.timezone 'America/Sao_Paulo', Rational.new!(-353,15), Rational.new!(-2797,60), 'S & SE Brazil (GO, DF, MG, ES, RJ, SP, PR, SC, RS)'
        c.timezone 'America/Campo_Grande', Rational.new!(-409,20), Rational.new!(-3277,60), 'Mato Grosso do Sul'
        c.timezone 'America/Cuiaba', Rational.new!(-187,12), Rational.new!(-673,12), 'Mato Grosso'
        c.timezone 'America/Porto_Velho', Rational.new!(-263,30), Rational.new!(-639,10), 'W Para, Rondonia'
        c.timezone 'America/Boa_Vista', Rational.new!(169,60), Rational.new!(-182,3), 'Roraima'
        c.timezone 'America/Manaus', Rational.new!(-47,15), Rational.new!(-3601,60), 'E Amazonas'
        c.timezone 'America/Eirunepe', Rational.new!(-20,3), Rational.new!(-1048,15), 'W Amazonas'
        c.timezone 'America/Rio_Branco', Rational.new!(-299,30), Rational.new!(-339,5), 'Acre'
      end
      country 'BS', 'Bahamas' do |c|
        c.timezone 'America/Nassau', Rational.new!(301,12), Rational.new!(-1547,20)
      end
      country 'BT', 'Bhutan' do |c|
        c.timezone 'Asia/Thimphu', Rational.new!(412,15), Rational.new!(1793,20)
      end
      country 'BV', 'Bouvet Island'
      country 'BW', 'Botswana' do |c|
        c.timezone 'Africa/Gaborone', Rational.new!(-103,4), Rational.new!(311,12)
      end
      country 'BY', 'Belarus' do |c|
        c.timezone 'Europe/Minsk', Rational.new!(539,10), Rational.new!(827,30)
      end
      country 'BZ', 'Belize' do |c|
        c.timezone 'America/Belize', Rational.new!(35,2), Rational.new!(-441,5)
      end
      country 'CA', 'Canada' do |c|
        c.timezone 'America/St_Johns', Rational.new!(1427,30), Rational.new!(-3163,60), 'Newfoundland Island'
        c.timezone 'America/Halifax', Rational.new!(893,20), Rational.new!(-318,5), 'Atlantic Time - Nova Scotia (most places), W Labrador, E Quebec & PEI'
        c.timezone 'America/Glace_Bay', Rational.new!(231,5), Rational.new!(-1199,20), 'Atlantic Time - Nova Scotia - places that did not observe DST 1966-1971'
        c.timezone 'America/Moncton', Rational.new!(461,10), Rational.new!(-3887,60), 'Atlantic Time - New Brunswick'
        c.timezone 'America/Goose_Bay', Rational.new!(160,3), Rational.new!(-725,12), 'Atlantic Time - E Labrador'
        c.timezone 'America/Montreal', Rational.new!(2731,60), Rational.new!(-2207,30), 'Eastern Time - Quebec - most locations'
        c.timezone 'America/Toronto', Rational.new!(873,20), Rational.new!(-4763,60), 'Eastern Time - Ontario - most locations'
        c.timezone 'America/Nipigon', Rational.new!(2941,60), Rational.new!(-1324,15), 'Eastern Time - Ontario & Quebec - places that did not observe DST 1967-1973'
        c.timezone 'America/Thunder_Bay', Rational.new!(2903,60), Rational.new!(-357,4), 'Eastern Time - Thunder Bay, Ontario'
        c.timezone 'America/Pangnirtung', Rational.new!(992,15), Rational.new!(-986,15), 'Eastern Time - Pangnirtung, Nunavut'
        c.timezone 'America/Iqaluit', Rational.new!(956,15), Rational.new!(-1027,15), 'Eastern Time - east Nunavut'
        c.timezone 'America/Coral_Harbour', Rational.new!(962,15), Rational.new!(-499,6), 'Eastern Standard Time - Southampton Island'
        c.timezone 'America/Rankin_Inlet', Rational.new!(251,4), Rational.new!(-553,6), 'Central Time - central Nunavut'
        c.timezone 'America/Winnipeg', Rational.new!(2993,60), Rational.new!(-1943,20), 'Central Time - Manitoba & west Ontario'
        c.timezone 'America/Rainy_River', Rational.new!(2923,60), Rational.new!(-5669,60), 'Central Time - Rainy River & Fort Frances, Ontario'
        c.timezone 'America/Cambridge_Bay', Rational.new!(1381,20), Rational.new!(-1261,12), 'Central Time - west Nunavut'
        c.timezone 'America/Regina', Rational.new!(252,5), Rational.new!(-2093,20), 'Central Standard Time - Saskatchewan - most locations'
        c.timezone 'America/Swift_Current', Rational.new!(3017,60), Rational.new!(-647,6), 'Central Standard Time - Saskatchewan - midwest'
        c.timezone 'America/Edmonton', Rational.new!(1071,20), Rational.new!(-1702,15), 'Mountain Time - Alberta, east British Columbia & west Saskatchewan'
        c.timezone 'America/Yellowknife', Rational.new!(1249,20), Rational.new!(-2287,20), 'Mountain Time - central Northwest Territories'
        c.timezone 'America/Inuvik', Rational.new!(821,12), Rational.new!(-227,2), 'Mountain Time - west Northwest Territories'
        c.timezone 'America/Dawson_Creek', Rational.new!(1793,30), Rational.new!(-3607,30), 'Mountain Standard Time - Dawson Creek & Fort Saint John, British Columbia'
        c.timezone 'America/Vancouver', Rational.new!(739,15), Rational.new!(-7387,60), 'Pacific Time - west British Columbia'
        c.timezone 'America/Whitehorse', Rational.new!(3643,60), Rational.new!(-2701,20), 'Pacific Time - south Yukon'
        c.timezone 'America/Dawson', Rational.new!(961,15), Rational.new!(-1673,12), 'Pacific Time - north Yukon'
      end
      country 'CC', 'Cocos (Keeling) Islands' do |c|
        c.timezone 'Indian/Cocos', Rational.new!(-73,6), Rational.new!(1163,12)
      end
      country 'CD', 'Congo (Dem. Rep.)' do |c|
        c.timezone 'Africa/Kinshasa', Rational.new!(-43,10), Rational.new!(153,10), 'west Dem. Rep. of Congo'
        c.timezone 'Africa/Lubumbashi', Rational.new!(-35,3), Rational.new!(412,15), 'east Dem. Rep. of Congo'
      end
      country 'CF', 'Central African Rep.' do |c|
        c.timezone 'Africa/Bangui', Rational.new!(131,30), Rational.new!(223,12)
      end
      country 'CG', 'Congo (Rep.)' do |c|
        c.timezone 'Africa/Brazzaville', Rational.new!(-64,15), Rational.new!(917,60)
      end
      country 'CH', 'Switzerland' do |c|
        c.timezone 'Europe/Zurich', Rational.new!(2843,60), Rational.new!(128,15)
      end
      country 'CI', 'Cote dIvoireIvoire' do |c|
        c.timezone 'Africa/Abidjan', Rational.new!(319,60), Rational.new!(-121,30)
      end
      country 'CK', 'Cook Islands' do |c|
        c.timezone 'Pacific/Rarotonga', Rational.new!(-637,30), Rational.new!(-4793,30)
      end
      country 'CL', 'Chile' do |c|
        c.timezone 'America/Santiago', Rational.new!(-669,20), Rational.new!(-212,3), 'most locations'
        c.timezone 'Pacific/Easter', Rational.new!(-163,6), Rational.new!(-2189,20), 'Easter Island & Sala y Gomez'
      end
      country 'CM', 'Cameroon' do |c|
        c.timezone 'Africa/Douala', Rational.new!(81,20), Rational.new!(97,10)
      end
      country 'CN', 'China' do |c|
        c.timezone 'Asia/Shanghai', Rational.new!(937,30), Rational.new!(1822,15), 'east China - Beijing, Guangdong, Shanghai, etc.'
        c.timezone 'Asia/Harbin', Rational.new!(183,4), Rational.new!(7601,60), 'Heilongjiang'
        c.timezone 'Asia/Chongqing', Rational.new!(887,30), Rational.new!(1279,12), 'central China - Gansu, Guizhou, Sichuan, Yunnan, etc.'
        c.timezone 'Asia/Urumqi', Rational.new!(219,5), Rational.new!(1051,12), 'Tibet & most of Xinjiang Uyghur'
        c.timezone 'Asia/Kashgar', Rational.new!(2369,60), Rational.new!(4559,60), 'southwest Xinjiang Uyghur'
      end
      country 'CO', 'Colombia' do |c|
        c.timezone 'America/Bogota', Rational.new!(23,5), Rational.new!(-889,12)
      end
      country 'CR', 'Costa Rica' do |c|
        c.timezone 'America/Costa_Rica', Rational.new!(149,15), Rational.new!(-1009,12)
      end
      country 'CS', 'Serbia and Montenegro' do |c|
        c.timezone 'Europe/Belgrade', Rational.new!(269,6), Rational.new!(41,2)
      end
      country 'CU', 'Cuba' do |c|
        c.timezone 'America/Havana', Rational.new!(347,15), Rational.new!(-2471,30)
      end
      country 'CV', 'Cape Verde' do |c|
        c.timezone 'Atlantic/Cape_Verde', Rational.new!(179,12), Rational.new!(-1411,60)
      end
      country 'CX', 'Christmas Island' do |c|
        c.timezone 'Indian/Christmas', Rational.new!(-125,12), Rational.new!(6343,60)
      end
      country 'CY', 'Cyprus' do |c|
        c.timezone 'Asia/Nicosia', Rational.new!(211,6), Rational.new!(1001,30)
      end
      country 'CZ', 'Czech Republic' do |c|
        c.timezone 'Europe/Prague', Rational.new!(601,12), Rational.new!(433,30)
      end
      country 'DE', 'Germany' do |c|
        c.timezone 'Europe/Berlin', Rational.new!(105,2), Rational.new!(401,30)
      end
      country 'DJ', 'Djibouti' do |c|
        c.timezone 'Africa/Djibouti', Rational.new!(58,5), Rational.new!(863,20)
      end
      country 'DK', 'Denmark' do |c|
        c.timezone 'Europe/Copenhagen', Rational.new!(167,3), Rational.new!(151,12)
      end
      country 'DM', 'Dominica' do |c|
        c.timezone 'America/Dominica', Rational.new!(153,10), Rational.new!(-307,5)
      end
      country 'DO', 'Dominican Republic' do |c|
        c.timezone 'America/Santo_Domingo', Rational.new!(277,15), Rational.new!(-699,10)
      end
      country 'DZ', 'Algeria' do |c|
        c.timezone 'Africa/Algiers', Rational.new!(2207,60), Rational.new!(61,20)
      end
      country 'EC', 'Ecuador' do |c|
        c.timezone 'America/Guayaquil', Rational.new!(-13,6), Rational.new!(-479,6), 'mainland'
        c.timezone 'Pacific/Galapagos', Rational.new!(-9,10), Rational.new!(-448,5), 'Galapagos Islands'
      end
      country 'EE', 'Estonia' do |c|
        c.timezone 'Europe/Tallinn', Rational.new!(713,12), Rational.new!(99,4)
      end
      country 'EG', 'Egypt' do |c|
        c.timezone 'Africa/Cairo', Rational.new!(601,20), Rational.new!(125,4)
      end
      country 'EH', 'Western Sahara' do |c|
        c.timezone 'Africa/El_Aaiun', Rational.new!(543,20), Rational.new!(-66,5)
      end
      country 'ER', 'Eritrea' do |c|
        c.timezone 'Africa/Asmera', Rational.new!(46,3), Rational.new!(2333,60)
      end
      country 'ES', 'Spain' do |c|
        c.timezone 'Europe/Madrid', Rational.new!(202,5), Rational.new!(-221,60), 'mainland'
        c.timezone 'Africa/Ceuta', Rational.new!(2153,60), Rational.new!(-319,60), 'Ceuta & Melilla'
        c.timezone 'Atlantic/Canary', Rational.new!(281,10), Rational.new!(-77,5), 'Canary Islands'
      end
      country 'ET', 'Ethiopia' do |c|
        c.timezone 'Africa/Addis_Ababa', Rational.new!(271,30), Rational.new!(387,10)
      end
      country 'FI', 'Finland' do |c|
        c.timezone 'Europe/Helsinki', Rational.new!(361,6), Rational.new!(749,30)
      end
      country 'FJ', 'Fiji' do |c|
        c.timezone 'Pacific/Fiji', Rational.new!(-272,15), Rational.new!(2141,12)
      end
      country 'FK', 'Falkland Islands' do |c|
        c.timezone 'Atlantic/Stanley', Rational.new!(-517,10), Rational.new!(-1157,20)
      end
      country 'FM', 'Micronesia' do |c|
        c.timezone 'Pacific/Truk', Rational.new!(89,12), Rational.new!(9107,60), 'Truk (Chuuk) and Yap'
        c.timezone 'Pacific/Ponape', Rational.new!(209,30), Rational.new!(9493,60), 'Ponape (Pohnpei)'
        c.timezone 'Pacific/Kosrae', Rational.new!(319,60), Rational.new!(9779,60), 'Kosrae'
      end
      country 'FO', 'Faeroe Islands' do |c|
        c.timezone 'Atlantic/Faeroe', Rational.new!(3721,60), Rational.new!(-203,30)
      end
      country 'FR', 'France' do |c|
        c.timezone 'Europe/Paris', Rational.new!(733,15), Rational.new!(7,3)
      end
      country 'GA', 'Gabon' do |c|
        c.timezone 'Africa/Libreville', Rational.new!(23,60), Rational.new!(189,20)
      end
      country 'GB', 'Britain (UK)' do |c|
        c.timezone 'Europe/London', Rational.new!(2059,40), Rational.new!(-5,16)
      end
      country 'GD', 'Grenada' do |c|
        c.timezone 'America/Grenada', Rational.new!(241,20), Rational.new!(-247,4)
      end
      country 'GE', 'Georgia' do |c|
        c.timezone 'Asia/Tbilisi', Rational.new!(2503,60), Rational.new!(2689,60)
      end
      country 'GF', 'French Guiana' do |c|
        c.timezone 'America/Cayenne', Rational.new!(74,15), Rational.new!(-157,3)
      end
      country 'GH', 'Ghana' do |c|
        c.timezone 'Africa/Accra', Rational.new!(111,20), Rational.new!(-13,60)
      end
      country 'GI', 'Gibraltar' do |c|
        c.timezone 'Europe/Gibraltar', Rational.new!(542,15), Rational.new!(-107,20)
      end
      country 'GL', 'Greenland' do |c|
        c.timezone 'America/Godthab', Rational.new!(3851,60), Rational.new!(-776,15), 'most locations'
        c.timezone 'America/Danmarkshavn', Rational.new!(2303,30), Rational.new!(-56,3), 'east coast, north of Scoresbysund'
        c.timezone 'America/Scoresbysund', Rational.new!(141,2), Rational.new!(-89,4), 'Scoresbysund / Ittoqqortoormiit'
        c.timezone 'America/Thule', Rational.new!(2297,30), Rational.new!(-4127,60), 'Thule / Pituffik'
      end
      country 'GM', 'Gambia' do |c|
        c.timezone 'Africa/Banjul', Rational.new!(202,15), Rational.new!(-333,20)
      end
      country 'GN', 'Guinea' do |c|
        c.timezone 'Africa/Conakry', Rational.new!(571,60), Rational.new!(-823,60)
      end
      country 'GP', 'Guadeloupe' do |c|
        c.timezone 'America/Guadeloupe', Rational.new!(487,30), Rational.new!(-923,15)
      end
      country 'GQ', 'Equatorial Guinea' do |c|
        c.timezone 'Africa/Malabo', Rational.new!(15,4), Rational.new!(527,60)
      end
      country 'GR', 'Greece' do |c|
        c.timezone 'Europe/Athens', Rational.new!(1139,30), Rational.new!(1423,60)
      end
      country 'GS', 'South Georgia & the South Sandwich Islands' do |c|
        c.timezone 'Atlantic/South_Georgia', Rational.new!(-814,15), Rational.new!(-548,15)
      end
      country 'GT', 'Guatemala' do |c|
        c.timezone 'America/Guatemala', Rational.new!(439,30), Rational.new!(-5431,60)
      end
      country 'GU', 'Guam' do |c|
        c.timezone 'Pacific/Guam', Rational.new!(202,15), Rational.new!(579,4)
      end
      country 'GW', 'Guinea-Bissau' do |c|
        c.timezone 'Africa/Bissau', Rational.new!(237,20), Rational.new!(-187,12)
      end
      country 'GY', 'Guyana' do |c|
        c.timezone 'America/Guyana', Rational.new!(34,5), Rational.new!(-349,6)
      end
      country 'HK', 'Hong Kong' do |c|
        c.timezone 'Asia/Hong_Kong', Rational.new!(1337,60), Rational.new!(2283,20)
      end
      country 'HM', 'Heard Island & McDonald Islands'
      country 'HN', 'Honduras' do |c|
        c.timezone 'America/Tegucigalpa', Rational.new!(141,10), Rational.new!(-5233,60)
      end
      country 'HR', 'Croatia' do |c|
        c.timezone 'Europe/Zagreb', Rational.new!(229,5), Rational.new!(479,30)
      end
      country 'HT', 'Haiti' do |c|
        c.timezone 'America/Port-au-Prince', Rational.new!(278,15), Rational.new!(-217,3)
      end
      country 'HU', 'Hungary' do |c|
        c.timezone 'Europe/Budapest', Rational.new!(95,2), Rational.new!(229,12)
      end
      country 'ID', 'Indonesia' do |c|
        c.timezone 'Asia/Jakarta', Rational.new!(-37,6), Rational.new!(534,5), 'Java & Sumatra'
        c.timezone 'Asia/Pontianak', Rational.new!(-1,30), Rational.new!(328,3), 'west & central Borneo'
        c.timezone 'Asia/Makassar', Rational.new!(-307,60), Rational.new!(597,5), 'east & south Borneo, Celebes, Bali, Nusa Tengarra, west Timor'
        c.timezone 'Asia/Jayapura', Rational.new!(-38,15), Rational.new!(1407,10), 'Irian Jaya & the Moluccas'
      end
      country 'IE', 'Ireland' do |c|
        c.timezone 'Europe/Dublin', Rational.new!(160,3), Rational.new!(-25,4)
      end
      country 'IL', 'Israel' do |c|
        c.timezone 'Asia/Jerusalem', Rational.new!(953,30), Rational.new!(1057,30)
      end
      country 'IN', 'India' do |c|
        c.timezone 'Asia/Calcutta', Rational.new!(338,15), Rational.new!(2651,30)
      end
      country 'IO', 'British Indian Ocean Territory' do |c|
        c.timezone 'Indian/Chagos', Rational.new!(-22,3), Rational.new!(869,12)
      end
      country 'IQ', 'Iraq' do |c|
        c.timezone 'Asia/Baghdad', Rational.new!(667,20), Rational.new!(533,12)
      end
      country 'IR', 'Iran' do |c|
        c.timezone 'Asia/Tehran', Rational.new!(107,3), Rational.new!(1543,30)
      end
      country 'IS', 'Iceland' do |c|
        c.timezone 'Atlantic/Reykjavik', Rational.new!(1283,20), Rational.new!(-437,20)
      end
      country 'IT', 'Italy' do |c|
        c.timezone 'Europe/Rome', Rational.new!(419,10), Rational.new!(749,60)
      end
      country 'JM', 'Jamaica' do |c|
        c.timezone 'America/Jamaica', Rational.new!(18,1), Rational.new!(-384,5)
      end
      country 'JO', 'Jordan' do |c|
        c.timezone 'Asia/Amman', Rational.new!(639,20), Rational.new!(539,15)
      end
      country 'JP', 'Japan' do |c|
        c.timezone 'Asia/Tokyo', Rational.new!(32089,900), Rational.new!(503081,3600)
      end
      country 'KE', 'Kenya' do |c|
        c.timezone 'Africa/Nairobi', Rational.new!(-77,60), Rational.new!(2209,60)
      end
      country 'KG', 'Kyrgyzstan' do |c|
        c.timezone 'Asia/Bishkek', Rational.new!(429,10), Rational.new!(373,5)
      end
      country 'KH', 'Cambodia' do |c|
        c.timezone 'Asia/Phnom_Penh', Rational.new!(231,20), Rational.new!(1259,12)
      end
      country 'KI', 'Kiribati' do |c|
        c.timezone 'Pacific/Tarawa', Rational.new!(17,12), Rational.new!(173,1), 'Gilbert Islands'
        c.timezone 'Pacific/Enderbury', Rational.new!(-47,15), Rational.new!(-2053,12), 'Phoenix Islands'
        c.timezone 'Pacific/Kiritimati', Rational.new!(28,15), Rational.new!(-472,3), 'Line Islands'
      end
      country 'KM', 'Comoros' do |c|
        c.timezone 'Indian/Comoro', Rational.new!(-701,60), Rational.new!(649,15)
      end
      country 'KN', 'St Kitts & Nevis' do |c|
        c.timezone 'America/St_Kitts', Rational.new!(173,10), Rational.new!(-3763,60)
      end
      country 'KP', 'Korea (North)' do |c|
        c.timezone 'Asia/Pyongyang', Rational.new!(2341,60), Rational.new!(503,4)
      end
      country 'KR', 'Korea (South)' do |c|
        c.timezone 'Asia/Seoul', Rational.new!(751,20), Rational.new!(3809,30)
      end
      country 'KW', 'Kuwait' do |c|
        c.timezone 'Asia/Kuwait', Rational.new!(88,3), Rational.new!(2879,60)
      end
      country 'KY', 'Cayman Islands' do |c|
        c.timezone 'America/Cayman', Rational.new!(193,10), Rational.new!(-4883,60)
      end
      country 'KZ', 'Kazakhstan' do |c|
        c.timezone 'Asia/Almaty', Rational.new!(173,4), Rational.new!(1539,20), 'most locations'
        c.timezone 'Asia/Qyzylorda', Rational.new!(224,5), Rational.new!(982,15), 'Qyzylorda (Kyzylorda, Kzyl-Orda)'
        c.timezone 'Asia/Aqtobe', Rational.new!(3017,60), Rational.new!(343,6), 'Aqtobe (Aktobe)'
        c.timezone 'Asia/Aqtau', Rational.new!(2671,60), Rational.new!(754,15), 'Atyrau (Atirau, Guryev), Mangghystau (Mankistau)yev), Mangghystau (Mankistau)'
        c.timezone 'Asia/Oral', Rational.new!(3073,60), Rational.new!(1027,20), 'West Kazakhstan'
      end
      country 'LA', 'Laos' do |c|
        c.timezone 'Asia/Vientiane', Rational.new!(539,30), Rational.new!(513,5)
      end
      country 'LB', 'Lebanon' do |c|
        c.timezone 'Asia/Beirut', Rational.new!(2033,60), Rational.new!(71,2)
      end
      country 'LC', 'St Lucia' do |c|
        c.timezone 'America/St_Lucia', Rational.new!(841,60), Rational.new!(-61,1)
      end
      country 'LI', 'Liechtenstein' do |c|
        c.timezone 'Europe/Vaduz', Rational.new!(943,20), Rational.new!(571,60)
      end
      country 'LK', 'Sri Lanka' do |c|
        c.timezone 'Asia/Colombo', Rational.new!(104,15), Rational.new!(1597,20)
      end
      country 'LR', 'Liberia' do |c|
        c.timezone 'Africa/Monrovia', Rational.new!(63,10), Rational.new!(-647,60)
      end
      country 'LS', 'Lesotho' do |c|
        c.timezone 'Africa/Maseru', Rational.new!(-442,15), Rational.new!(55,2)
      end
      country 'LT', 'Lithuania' do |c|
        c.timezone 'Europe/Vilnius', Rational.new!(3281,60), Rational.new!(1519,60)
      end
      country 'LU', 'Luxembourg' do |c|
        c.timezone 'Europe/Luxembourg', Rational.new!(248,5), Rational.new!(123,20)
      end
      country 'LV', 'Latvia' do |c|
        c.timezone 'Europe/Riga', Rational.new!(1139,20), Rational.new!(241,10)
      end
      country 'LY', 'Libya' do |c|
        c.timezone 'Africa/Tripoli', Rational.new!(329,10), Rational.new!(791,60)
      end
      country 'MA', 'Morocco' do |c|
        c.timezone 'Africa/Casablanca', Rational.new!(673,20), Rational.new!(-91,12)
      end
      country 'MC', 'Monaco' do |c|
        c.timezone 'Europe/Monaco', Rational.new!(437,10), Rational.new!(443,60)
      end
      country 'MD', 'Moldova' do |c|
        c.timezone 'Europe/Chisinau', Rational.new!(47,1), Rational.new!(173,6)
      end
      country 'MG', 'Madagascar' do |c|
        c.timezone 'Indian/Antananarivo', Rational.new!(-227,12), Rational.new!(2851,60)
      end
      country 'MH', 'Marshall Islands' do |c|
        c.timezone 'Pacific/Majuro', Rational.new!(143,20), Rational.new!(856,5), 'most locations'
        c.timezone 'Pacific/Kwajalein', Rational.new!(109,12), Rational.new!(502,3), 'Kwajalein'
      end
      country 'MK', 'Macedonia' do |c|
        c.timezone 'Europe/Skopje', Rational.new!(2519,60), Rational.new!(643,30)
      end
      country 'ML', 'Mali' do |c|
        c.timezone 'Africa/Bamako', Rational.new!(253,20), Rational.new!(-8,1)
      end
      country 'MM', 'Myanmar (Burma)' do |c|
        c.timezone 'Asia/Rangoon', Rational.new!(1007,60), Rational.new!(577,6)
      end
      country 'MN', 'Mongolia' do |c|
        c.timezone 'Asia/Ulaanbaatar', Rational.new!(575,12), Rational.new!(6413,60), 'most locations'
        c.timezone 'Asia/Hovd', Rational.new!(2881,60), Rational.new!(1833,20), 'Bayan-Olgiy, Govi-Altai, Hovd, Uvs, Zavkhan'
        c.timezone 'Asia/Choibalsan', Rational.new!(721,15), Rational.new!(229,2), 'Dornod, Sukhbaatar'
      end
      country 'MO', 'Macau' do |c|
        c.timezone 'Asia/Macau', Rational.new!(667,30), Rational.new!(1363,12)
      end
      country 'MP', 'Northern Mariana Islands' do |c|
        c.timezone 'Pacific/Saipan', Rational.new!(76,5), Rational.new!(583,4)
      end
      country 'MQ', 'Martinique' do |c|
        c.timezone 'America/Martinique', Rational.new!(73,5), Rational.new!(-733,12)
      end
      country 'MR', 'Mauritania' do |c|
        c.timezone 'Africa/Nouakchott', Rational.new!(181,10), Rational.new!(-319,20)
      end
      country 'MS', 'Montserrat' do |c|
        c.timezone 'America/Montserrat', Rational.new!(1003,60), Rational.new!(-3733,60)
      end
      country 'MT', 'Malta' do |c|
        c.timezone 'Europe/Malta', Rational.new!(359,10), Rational.new!(871,60)
      end
      country 'MU', 'Mauritius' do |c|
        c.timezone 'Indian/Mauritius', Rational.new!(-121,6), Rational.new!(115,2)
      end
      country 'MV', 'Maldives' do |c|
        c.timezone 'Indian/Maldives', Rational.new!(25,6), Rational.new!(147,2)
      end
      country 'MW', 'Malawi' do |c|
        c.timezone 'Africa/Blantyre', Rational.new!(-947,60), Rational.new!(35,1)
      end
      country 'MX', 'Mexico' do |c|
        c.timezone 'America/Mexico_City', Rational.new!(97,5), Rational.new!(-1983,20), 'Central Time - most locations'
        c.timezone 'America/Cancun', Rational.new!(253,12), Rational.new!(-2603,30), 'Central Time - Quintana Roo'
        c.timezone 'America/Merida', Rational.new!(629,30), Rational.new!(-5377,60), 'Central Time - Campeche, Yucatan'
        c.timezone 'America/Monterrey', Rational.new!(77,3), Rational.new!(-6019,60), 'Central Time - Coahuila, Durango, Nuevo Leon, Tamaulipas'
        c.timezone 'America/Mazatlan', Rational.new!(1393,60), Rational.new!(-1277,12), 'Mountain Time - S Baja, Nayarit, Sinaloa'
        c.timezone 'America/Chihuahua', Rational.new!(859,30), Rational.new!(-1273,12), 'Mountain Time - Chihuahua'
        c.timezone 'America/Hermosillo', Rational.new!(436,15), Rational.new!(-3329,30), 'Mountain Standard Time - Sonora'
        c.timezone 'America/Tijuana', Rational.new!(488,15), Rational.new!(-7021,60), 'Pacific Time'
      end
      country 'MY', 'Malaysia' do |c|
        c.timezone 'Asia/Kuala_Lumpur', Rational.new!(19,6), Rational.new!(1017,10), 'peninsular Malaysia'
        c.timezone 'Asia/Kuching', Rational.new!(31,20), Rational.new!(331,3), 'Sabah & Sarawak'
      end
      country 'MZ', 'Mozambique' do |c|
        c.timezone 'Africa/Maputo', Rational.new!(-779,30), Rational.new!(391,12)
      end
      country 'NA', 'Namibia' do |c|
        c.timezone 'Africa/Windhoek', Rational.new!(-677,30), Rational.new!(171,10)
      end
      country 'NC', 'New Caledonia' do |c|
        c.timezone 'Pacific/Noumea', Rational.new!(-334,15), Rational.new!(331,2)
      end
      country 'NE', 'Niger' do |c|
        c.timezone 'Africa/Niamey', Rational.new!(811,60), Rational.new!(127,60)
      end
      country 'NF', 'Norfolk Island' do |c|
        c.timezone 'Pacific/Norfolk', Rational.new!(-581,20), Rational.new!(5039,30)
      end
      country 'NG', 'Nigeria' do |c|
        c.timezone 'Africa/Lagos', Rational.new!(129,20), Rational.new!(17,5)
      end
      country 'NI', 'Nicaragua' do |c|
        c.timezone 'America/Managua', Rational.new!(243,20), Rational.new!(-5177,60)
      end
      country 'NL', 'Netherlands' do |c|
        c.timezone 'Europe/Amsterdam', Rational.new!(1571,30), Rational.new!(49,10)
      end
      country 'NO', 'Norway' do |c|
        c.timezone 'Europe/Oslo', Rational.new!(719,12), Rational.new!(43,4)
      end
      country 'NP', 'Nepal' do |c|
        c.timezone 'Asia/Katmandu', Rational.new!(1663,60), Rational.new!(5119,60)
      end
      country 'NR', 'Nauru' do |c|
        c.timezone 'Pacific/Nauru', Rational.new!(-31,60), Rational.new!(2003,12)
      end
      country 'NU', 'Niue' do |c|
        c.timezone 'Pacific/Niue', Rational.new!(-1141,60), Rational.new!(2039,12)
      end
      country 'NZ', 'New Zealand' do |c|
        c.timezone 'Pacific/Auckland', Rational.new!(-553,15), Rational.new!(5243,30), 'most locations'
        c.timezone 'Pacific/Chatham', Rational.new!(-879,20), Rational.new!(-3531,20), 'Chatham Islands'
      end
      country 'OM', 'Oman' do |c|
        c.timezone 'Asia/Muscat', Rational.new!(118,5), Rational.new!(703,12)
      end
      country 'PA', 'Panama' do |c|
        c.timezone 'America/Panama', Rational.new!(269,30), Rational.new!(-1193,15)
      end
      country 'PE', 'Peru' do |c|
        c.timezone 'America/Lima', Rational.new!(-241,20), Rational.new!(-1541,20)
      end
      country 'PF', 'French Polynesia' do |c|
        c.timezone 'Pacific/Tahiti', Rational.new!(-263,15), Rational.new!(-4487,30), 'Society Islands'
        c.timezone 'Pacific/Marquesas', Rational.new!(-9,1), Rational.new!(-279,2), 'Marquesas Islands'
        c.timezone 'Pacific/Gambier', Rational.new!(-347,15), Rational.new!(-2699,20), 'Gambier Islands'
      end
      country 'PG', 'Papua New Guinea' do |c|
        c.timezone 'Pacific/Port_Moresby', Rational.new!(-19,2), Rational.new!(883,6)
      end
      country 'PH', 'Philippines' do |c|
        c.timezone 'Asia/Manila', Rational.new!(175,12), Rational.new!(121,1)
      end
      country 'PK', 'Pakistan' do |c|
        c.timezone 'Asia/Karachi', Rational.new!(373,15), Rational.new!(1341,20)
      end
      country 'PL', 'Poland' do |c|
        c.timezone 'Europe/Warsaw', Rational.new!(209,4), Rational.new!(21,1)
      end
      country 'PM', 'St Pierre & Miquelon' do |c|
        c.timezone 'America/Miquelon', Rational.new!(941,20), Rational.new!(-169,3)
      end
      country 'PN', 'Pitcairn' do |c|
        c.timezone 'Pacific/Pitcairn', Rational.new!(-376,15), Rational.new!(-1561,12)
      end
      country 'PR', 'Puerto Rico' do |c|
        c.timezone 'America/Puerto_Rico', Rational.new!(11081,600), Rational.new!(-118991,1800)
      end
      country 'PS', 'Palestine' do |c|
        c.timezone 'Asia/Gaza', Rational.new!(63,2), Rational.new!(517,15)
      end
      country 'PT', 'Portugal' do |c|
        c.timezone 'Europe/Lisbon', Rational.new!(2323,60), Rational.new!(-137,15), 'mainland'
        c.timezone 'Atlantic/Madeira', Rational.new!(979,30), Rational.new!(-169,10), 'Madeira Islands'
        c.timezone 'Atlantic/Azores', Rational.new!(566,15), Rational.new!(-77,3), 'Azores'
      end
      country 'PW', 'Palau' do |c|
        c.timezone 'Pacific/Palau', Rational.new!(22,3), Rational.new!(8069,60)
      end
      country 'PY', 'Paraguay' do |c|
        c.timezone 'America/Asuncion', Rational.new!(-379,15), Rational.new!(-173,3)
      end
      country 'QA', 'Qatar' do |c|
        c.timezone 'Asia/Qatar', Rational.new!(1517,60), Rational.new!(773,15)
      end
      country 'RE', 'Reunion' do |c|
        c.timezone 'Indian/Reunion', Rational.new!(-313,15), Rational.new!(832,15)
      end
      country 'RO', 'Romania' do |c|
        c.timezone 'Europe/Bucharest', Rational.new!(1333,30), Rational.new!(261,10)
      end
      country 'RU', 'Russia' do |c|
        c.timezone 'Europe/Kaliningrad', Rational.new!(3283,60), Rational.new!(41,2), 'Moscow-01 - Kaliningrad'
        c.timezone 'Europe/Moscow', Rational.new!(223,4), Rational.new!(451,12), 'Moscow+00 - west Russia'
        c.timezone 'Europe/Samara', Rational.new!(266,5), Rational.new!(1003,20), 'Moscow+01 - Caspian Sea'
        c.timezone 'Asia/Yekaterinburg', Rational.new!(1137,20), Rational.new!(303,5), 'Moscow+02 - Urals'
        c.timezone 'Asia/Omsk', Rational.new!(55,1), Rational.new!(367,5), 'Moscow+03 - west Siberia'
        c.timezone 'Asia/Novosibirsk', Rational.new!(1651,30), Rational.new!(995,12), 'Moscow+03 - Novosibirsk'
        c.timezone 'Asia/Krasnoyarsk', Rational.new!(3361,60), Rational.new!(557,6), 'Moscow+04 - Yenisei River'
        c.timezone 'Asia/Irkutsk', Rational.new!(784,15), Rational.new!(313,3), 'Moscow+05 - Lake Baikal'
        c.timezone 'Asia/Yakutsk', Rational.new!(62,1), Rational.new!(389,3), 'Moscow+06 - Lena River'
        c.timezone 'Asia/Vladivostok', Rational.new!(259,6), Rational.new!(1979,15), 'Moscow+07 - Amur River'
        c.timezone 'Asia/Sakhalin', Rational.new!(1409,30), Rational.new!(1427,10), 'Moscow+07 - Sakhalin Island'
        c.timezone 'Asia/Magadan', Rational.new!(1787,30), Rational.new!(754,5), 'Moscow+08 - Magadan'
        c.timezone 'Asia/Kamchatka', Rational.new!(3181,60), Rational.new!(3173,20), 'Moscow+09 - Kamchatka'
        c.timezone 'Asia/Anadyr', Rational.new!(259,4), Rational.new!(10649,60), 'Moscow+10 - Bering Sea'
      end
      country 'RW', 'Rwanda' do |c|
        c.timezone 'Africa/Kigali', Rational.new!(-39,20), Rational.new!(451,15)
      end
      country 'SA', 'Saudi Arabia' do |c|
        c.timezone 'Asia/Riyadh', Rational.new!(739,30), Rational.new!(2803,60)
      end
      country 'SB', 'Solomon Islands' do |c|
        c.timezone 'Pacific/Guadalcanal', Rational.new!(-143,15), Rational.new!(801,5)
      end
      country 'SC', 'Seychelles' do |c|
        c.timezone 'Indian/Mahe', Rational.new!(-14,3), Rational.new!(832,15)
      end
      country 'SD', 'Sudan' do |c|
        c.timezone 'Africa/Khartoum', Rational.new!(78,5), Rational.new!(488,15)
      end
      country 'SE', 'Sweden' do |c|
        c.timezone 'Europe/Stockholm', Rational.new!(178,3), Rational.new!(361,20)
      end
      country 'SG', 'Singapore' do |c|
        c.timezone 'Asia/Singapore', Rational.new!(77,60), Rational.new!(2077,20)
      end
      country 'SH', 'St Helena' do |c|
        c.timezone 'Atlantic/St_Helena', Rational.new!(-191,12), Rational.new!(-57,10)
      end
      country 'SI', 'Slovenia' do |c|
        c.timezone 'Europe/Ljubljana', Rational.new!(921,20), Rational.new!(871,60)
      end
      country 'SJ', 'Svalbard & Jan Mayen' do |c|
        c.timezone 'Arctic/Longyearbyen', Rational.new!(78,1), Rational.new!(16,1), 'Svalbard'
        c.timezone 'Atlantic/Jan_Mayen', Rational.new!(4259,60), Rational.new!(-97,12), 'Jan Mayen'
      end
      country 'SK', 'Slovakia' do |c|
        c.timezone 'Europe/Bratislava', Rational.new!(963,20), Rational.new!(1027,60)
      end
      country 'SL', 'Sierra Leone' do |c|
        c.timezone 'Africa/Freetown', Rational.new!(17,2), Rational.new!(-53,4)
      end
      country 'SM', 'San Marino' do |c|
        c.timezone 'Europe/San_Marino', Rational.new!(527,12), Rational.new!(187,15)
      end
      country 'SN', 'Senegal' do |c|
        c.timezone 'Africa/Dakar', Rational.new!(44,3), Rational.new!(-523,30)
      end
      country 'SO', 'Somalia' do |c|
        c.timezone 'Africa/Mogadishu', Rational.new!(31,15), Rational.new!(1361,30)
      end
      country 'SR', 'Suriname' do |c|
        c.timezone 'America/Paramaribo', Rational.new!(35,6), Rational.new!(-331,6)
      end
      country 'ST', 'Sao Tome & Principe' do |c|
        c.timezone 'Africa/Sao_Tome', Rational.new!(1,3), Rational.new!(101,15)
      end
      country 'SV', 'El Salvador' do |c|
        c.timezone 'America/El_Salvador', Rational.new!(137,10), Rational.new!(-446,5)
      end
      country 'SY', 'Syria' do |c|
        c.timezone 'Asia/Damascus', Rational.new!(67,2), Rational.new!(363,10)
      end
      country 'SZ', 'Swaziland' do |c|
        c.timezone 'Africa/Mbabane', Rational.new!(-263,10), Rational.new!(311,10)
      end
      country 'TC', 'Turks & Caicos Is' do |c|
        c.timezone 'America/Grand_Turk', Rational.new!(322,15), Rational.new!(-1067,15)
      end
      country 'TD', 'Chad' do |c|
        c.timezone 'Africa/Ndjamena', Rational.new!(727,60), Rational.new!(301,20)
      end
      country 'TF', 'French Southern & Antarctic Lands' do |c|
        c.timezone 'Indian/Kerguelen', Rational.new!(-17767,360), Rational.new!(28087,400)
      end
      country 'TG', 'Togo' do |c|
        c.timezone 'Africa/Lome', Rational.new!(92,15), Rational.new!(73,60)
      end
      country 'TH', 'Thailand' do |c|
        c.timezone 'Asia/Bangkok', Rational.new!(55,4), Rational.new!(6031,60)
      end
      country 'TJ', 'Tajikistan' do |c|
        c.timezone 'Asia/Dushanbe', Rational.new!(463,12), Rational.new!(344,5)
      end
      country 'TK', 'Tokelau' do |c|
        c.timezone 'Pacific/Fakaofo', Rational.new!(-281,30), Rational.new!(-5137,30)
      end
      country 'TL', 'East Timor' do |c|
        c.timezone 'Asia/Dili', Rational.new!(-171,20), Rational.new!(1507,12)
      end
      country 'TM', 'Turkmenistan' do |c|
        c.timezone 'Asia/Ashgabat', Rational.new!(759,20), Rational.new!(3503,60)
      end
      country 'TN', 'Tunisia' do |c|
        c.timezone 'Africa/Tunis', Rational.new!(184,5), Rational.new!(611,60)
      end
      country 'TO', 'Tonga' do |c|
        c.timezone 'Pacific/Tongatapu', Rational.new!(-127,6), Rational.new!(1051,6)
      end
      country 'TR', 'Turkey' do |c|
        c.timezone 'Europe/Istanbul', Rational.new!(2461,60), Rational.new!(869,30)
      end
      country 'TT', 'Trinidad & Tobago' do |c|
        c.timezone 'America/Port_of_Spain', Rational.new!(213,20), Rational.new!(-3691,60)
      end
      country 'TV', 'Tuvalu' do |c|
        c.timezone 'Pacific/Funafuti', Rational.new!(-511,60), Rational.new!(10753,60)
      end
      country 'TW', 'Taiwan' do |c|
        c.timezone 'Asia/Taipei', Rational.new!(501,20), Rational.new!(243,2)
      end
      country 'TZ', 'Tanzania' do |c|
        c.timezone 'Africa/Dar_es_Salaam', Rational.new!(-34,5), Rational.new!(2357,60)
      end
      country 'UA', 'Ukraine' do |c|
        c.timezone 'Europe/Kiev', Rational.new!(1513,30), Rational.new!(1831,60), 'most locations'
        c.timezone 'Europe/Uzhgorod', Rational.new!(2917,60), Rational.new!(223,10), 'Ruthenia'
        c.timezone 'Europe/Zaporozhye', Rational.new!(287,6), Rational.new!(211,6), 'Zaporozhye, E Luganskye, E Lugansk'
        c.timezone 'Europe/Simferopol', Rational.new!(899,20), Rational.new!(341,10), 'central Crimea'
      end
      country 'UG', 'Uganda' do |c|
        c.timezone 'Africa/Kampala', Rational.new!(19,60), Rational.new!(389,12)
      end
      country 'UM', 'US minor outlying islands' do |c|
        c.timezone 'Pacific/Johnston', Rational.new!(17,1), Rational.new!(-337,2), 'Johnston Atoll'
        c.timezone 'Pacific/Midway', Rational.new!(1693,60), Rational.new!(-5321,30), 'Midway Islands'
        c.timezone 'Pacific/Wake', Rational.new!(1157,60), Rational.new!(9997,60), 'Wake Island'
      end
      country 'US', 'United States' do |c|
        c.timezone 'America/New_York', Rational.new!(48857,1200), Rational.new!(-266423,3600), 'Eastern Time'
        c.timezone 'America/Detroit', Rational.new!(152393,3600), Rational.new!(-19931,240), 'Eastern Time - Michigan - most locations'
        c.timezone 'America/Kentucky/Louisville', Rational.new!(9181,240), Rational.new!(-154367,1800), 'Eastern Time - Kentucky - Louisville area'
        c.timezone 'America/Kentucky/Monticello', Rational.new!(132587,3600), Rational.new!(-101819,1200), 'Eastern Time - Kentucky - Wayne County'
        c.timezone 'America/Indiana/Indianapolis', Rational.new!(23861,600), Rational.new!(-310169,3600), 'Eastern Time - Indiana - most locations'
        c.timezone 'America/Indiana/Marengo', Rational.new!(17269,450), Rational.new!(-310841,3600), 'Eastern Time - Indiana - Crawford County'
        c.timezone 'America/Indiana/Knox', Rational.new!(9911,240), Rational.new!(-693,8), 'Eastern Time - Indiana - Starke County'
        c.timezone 'America/Indiana/Vevay', Rational.new!(34873,900), Rational.new!(-153121,1800), 'Eastern Time - Indiana - Switzerland County'
        c.timezone 'America/Chicago', Rational.new!(837,20), Rational.new!(-1753,20), 'Central Time'
        c.timezone 'America/Indiana/Vincennes', Rational.new!(69619,1800), Rational.new!(-315103,3600), 'Central Time - Indiana - Daviess, Dubois, Knox, Martin, Perry & Pulaski Counties'
        c.timezone 'America/Indiana/Petersburg', Rational.new!(138571,3600), Rational.new!(-314203,3600), 'Central Time - Indiana - Pike County'
        c.timezone 'America/Menominee', Rational.new!(40597,900), Rational.new!(-105137,1200), 'Central Time - Michigan - Dickinson, Gogebic, Iron & Menominee Counties'
        c.timezone 'America/North_Dakota/Center', Rational.new!(169619,3600), Rational.new!(-121559,1200), 'Central Time - North Dakota - Oliver County'
        c.timezone 'America/North_Dakota/New_Salem', Rational.new!(9369,200), Rational.new!(-121693,1200), 'Central Time - North Dakota - Morton County (except Mandan area)'
        c.timezone 'America/Denver', Rational.new!(47687,1200), Rational.new!(-125981,1200), 'Mountain Time'
        c.timezone 'America/Boise', Rational.new!(157009,3600), Rational.new!(-46481,400), 'Mountain Time - south Idaho & east Oregon'
        c.timezone 'America/Shiprock', Rational.new!(33107,900), Rational.new!(-391271,3600), 'Mountain Time - Navajo'
        c.timezone 'America/Phoenix', Rational.new!(20069,600), Rational.new!(-16811,150), 'Mountain Standard Time - Arizona'
        c.timezone 'America/Los_Angeles', Rational.new!(30647,900), Rational.new!(-212837,1800), 'Pacific Time'
        c.timezone 'America/Anchorage', Rational.new!(44077,720), Rational.new!(-539641,3600), 'Alaska Time'
        c.timezone 'America/Juneau', Rational.new!(209887,3600), Rational.new!(-483911,3600), 'Alaska Time - Alaska panhandle'
        c.timezone 'America/Yakutat', Rational.new!(214369,3600), Rational.new!(-251509,1800), 'Alaska Time - Alaska panhandle neck'
        c.timezone 'America/Nome', Rational.new!(58051,900), Rational.new!(-595463,3600), 'Alaska Time - west Alaska'
        c.timezone 'America/Adak', Rational.new!(1297,25), Rational.new!(-635969,3600), 'Aleutian Islands'
        c.timezone 'Pacific/Honolulu', Rational.new!(15341,720), Rational.new!(-18943,120), 'Hawaii'
      end
      country 'UY', 'Uruguay' do |c|
        c.timezone 'America/Montevideo', Rational.new!(-2093,60), Rational.new!(-3371,60)
      end
      country 'UZ', 'Uzbekistan' do |c|
        c.timezone 'Asia/Samarkand', Rational.new!(119,3), Rational.new!(334,5), 'west Uzbekistan'
        c.timezone 'Asia/Tashkent', Rational.new!(124,3), Rational.new!(693,10), 'east Uzbekistan'
      end
      country 'VA', 'Vatican City' do |c|
        c.timezone 'Europe/Vatican', Rational.new!(419,10), Rational.new!(249,20)
      end
      country 'VC', 'St Vincent' do |c|
        c.timezone 'America/St_Vincent', Rational.new!(263,20), Rational.new!(-1837,30)
      end
      country 'VE', 'Venezuela' do |c|
        c.timezone 'America/Caracas', Rational.new!(21,2), Rational.new!(-1004,15)
      end
      country 'VG', 'Virgin Islands (UK)' do |c|
        c.timezone 'America/Tortola', Rational.new!(369,20), Rational.new!(-3877,60)
      end
      country 'VI', 'Virgin Islands (US)' do |c|
        c.timezone 'America/St_Thomas', Rational.new!(367,20), Rational.new!(-974,15)
      end
      country 'VN', 'Vietnam' do |c|
        c.timezone 'Asia/Saigon', Rational.new!(43,4), Rational.new!(320,3)
      end
      country 'VU', 'Vanuatu' do |c|
        c.timezone 'Pacific/Efate', Rational.new!(-53,3), Rational.new!(2021,12)
      end
      country 'WF', 'Wallis & Futuna' do |c|
        c.timezone 'Pacific/Wallis', Rational.new!(-133,10), Rational.new!(-1057,6)
      end
      country 'WS', 'Samoa (western)' do |c|
        c.timezone 'Pacific/Apia', Rational.new!(-83,6), Rational.new!(-2576,15)
      end
      country 'YE', 'Yemen' do |c|
        c.timezone 'Asia/Aden', Rational.new!(51,4), Rational.new!(226,5)
      end
      country 'YT', 'Mayotte' do |c|
        c.timezone 'Indian/Mayotte', Rational.new!(-767,60), Rational.new!(1357,30)
      end
      country 'ZA', 'South Africa' do |c|
        c.timezone 'Africa/Johannesburg', Rational.new!(-105,4), Rational.new!(28,1)
      end
      country 'ZM', 'Zambia' do |c|
        c.timezone 'Africa/Lusaka', Rational.new!(-185,12), Rational.new!(1697,60)
      end
      country 'ZW', 'Zimbabwe' do |c|
        c.timezone 'Africa/Harare', Rational.new!(-107,6), Rational.new!(621,20)
      end
    end
  end
end
