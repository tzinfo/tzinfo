# encoding: UTF-8
# frozen_string_literal: true

# This file contains data derived from the IANA Time Zone Database
# (https://www.iana.org/time-zones).

module TZInfo
  module Data
    module Indexes
      module Countries
        include Format2::CountryIndexDefinition

        country_index do |i|
          i.timezone :t1, 'Africa/Abidjan', 319, 60, -121, 30
          i.timezone :t2, 'Africa/Johannesburg', -105, 4, 28, 1
          i.timezone :t3, 'Africa/Lagos', 129, 20, 17, 5, 'West Africa Time'
          i.timezone :t4, 'Africa/Maputo', -779, 30, 391, 12, 'Central Africa Time'
          i.timezone :t5, 'Africa/Nairobi', -77, 60, 2209, 60
          i.timezone :t6, 'America/Panama', 269, 30, -1193, 15, 'EST - ON (Atikokan), NU (Coral H)'
          i.timezone :t7, 'America/Phoenix', 20069, 600, -16811, 150, 'MST - AZ (most areas), Creston BC'
          i.timezone :t8, 'America/Puerto_Rico', 11081, 600, -118991, 1800, 'AST'
          i.timezone :t9, 'America/Toronto', 873, 20, -4763, 60, 'Eastern - ON, QC (most areas)'
          i.timezone :t10, 'Asia/Bangkok', 55, 4, 6031, 60, 'north Vietnam'
          i.timezone :t11, 'Asia/Dubai', 253, 10, 553, 10, 'Crozet, Scattered Is'
          i.timezone :t12, 'Asia/Kuching', 31, 20, 331, 3, 'Sabah, Sarawak'
          i.timezone :t13, 'Asia/Qatar', 1517, 60, 773, 15
          i.timezone :t14, 'Asia/Riyadh', 739, 30, 2803, 60, 'Syowa'
          i.timezone :t15, 'Asia/Singapore', 77, 60, 2077, 20, 'peninsular Malaysia'
          i.timezone :t16, 'Asia/Urumqi', 219, 5, 1051, 12, 'Xinjiang Time, Vostok'
          i.timezone :t17, 'Asia/Yangon', 1007, 60, 577, 6
          i.timezone :t18, 'Europe/Belgrade', 269, 6, 41, 2
          i.timezone :t19, 'Europe/Berlin', 105, 2, 401, 30, 'most of Germany'
          i.timezone :t20, 'Europe/Brussels', 305, 6, 13, 3
          i.timezone :t21, 'Europe/Helsinki', 361, 6, 749, 30
          i.timezone :t22, 'Europe/London', 6181, 120, -451, 3600
          i.timezone :t23, 'Europe/Paris', 733, 15, 7, 3
          i.timezone :t24, 'Europe/Prague', 601, 12, 433, 30
          i.timezone :t25, 'Europe/Rome', 419, 10, 749, 60
          i.timezone :t26, 'Europe/Simferopol', 899, 20, 341, 10, 'Crimea'
          i.timezone :t27, 'Europe/Zurich', 2843, 60, 128, 15, 'Büsingen'
          i.timezone :t28, 'Indian/Maldives', 25, 6, 147, 2, 'Kerguelen, St Paul I, Amsterdam I'
          i.timezone :t29, 'Pacific/Auckland', -553, 15, 5243, 30, 'New Zealand time'
          i.timezone :t30, 'Pacific/Guadalcanal', -143, 15, 801, 5, 'Pohnpei'
          i.timezone :t31, 'Pacific/Guam', 202, 15, 579, 4
          i.timezone :t32, 'Pacific/Pago_Pago', -214, 15, -1707, 10, 'Midway'
          i.timezone :t33, 'Pacific/Port_Moresby', -19, 2, 883, 6, 'Papua New Guinea (most areas), Chuuk, Yap, Dumont d\'Urville'
          i.timezone :t34, 'Pacific/Tarawa', 17, 12, 173, 1, 'Gilberts, Marshalls, Wake'

          i.country 'AD', 'Andorra' do |c|
            c.timezone 'Europe/Andorra', 85, 2, 91, 60
          end
          i.country 'AE', 'United Arab Emirates' do |c|
            c.timezone :t11
          end
          i.country 'AF', 'Afghanistan' do |c|
            c.timezone 'Asia/Kabul', 2071, 60, 346, 5
          end
          i.country 'AG', 'Antigua & Barbuda' do |c|
            c.timezone :t8
          end
          i.country 'AI', 'Anguilla' do |c|
            c.timezone :t8
          end
          i.country 'AL', 'Albania' do |c|
            c.timezone 'Europe/Tirane', 124, 3, 119, 6
          end
          i.country 'AM', 'Armenia' do |c|
            c.timezone 'Asia/Yerevan', 2411, 60, 89, 2
          end
          i.country 'AO', 'Angola' do |c|
            c.timezone :t3
          end
          i.country 'AQ', 'Antarctica' do |c|
            c.timezone 'Antarctica/Casey', -3977, 60, 6631, 60, 'Casey'
            c.timezone 'Antarctica/Davis', -823, 12, 2339, 30, 'Davis'
            c.timezone 'Antarctica/Mawson', -338, 5, 3773, 60, 'Mawson'
            c.timezone 'Antarctica/Palmer', -324, 5, -641, 10, 'Palmer'
            c.timezone 'Antarctica/Rothera', -2027, 30, -1022, 15, 'Rothera'
            c.timezone 'Antarctica/Troll', -259241, 3600, 507, 200, 'Troll'
            c.timezone :t16
            c.timezone :t29
            c.timezone :t33
            c.timezone :t14
          end
          i.country 'AR', 'Argentina' do |c|
            c.timezone 'America/Argentina/Buenos_Aires', -173, 5, -1169, 20, 'Buenos Aires (BA, CF)'
            c.timezone 'America/Argentina/Cordoba', -157, 5, -3851, 60, 'most areas: CB, CC, CN, ER, FM, MN, SE, SF'
            c.timezone 'America/Argentina/Salta', -1487, 60, -785, 12, 'Salta (SA, LP, NQ, RN)'
            c.timezone 'America/Argentina/Jujuy', -1451, 60, -653, 10, 'Jujuy (JY)'
            c.timezone 'America/Argentina/Tucuman', -1609, 60, -3913, 60, 'Tucumán (TM)'
            c.timezone 'America/Argentina/Catamarca', -427, 15, -3947, 60, 'Catamarca (CT); Chubut (CH)'
            c.timezone 'America/Argentina/La_Rioja', -883, 30, -1337, 20, 'La Rioja (LR)'
            c.timezone 'America/Argentina/San_Juan', -473, 15, -4111, 60, 'San Juan (SJ)'
            c.timezone 'America/Argentina/Mendoza', -1973, 60, -4129, 60, 'Mendoza (MZ)'
            c.timezone 'America/Argentina/San_Luis', -1999, 60, -1327, 20, 'San Luis (SL)'
            c.timezone 'America/Argentina/Rio_Gallegos', -1549, 30, -4153, 60, 'Santa Cruz (SC)'
            c.timezone 'America/Argentina/Ushuaia', -274, 5, -683, 10, 'Tierra del Fuego (TF)'
          end
          i.country 'AS', 'Samoa (American)' do |c|
            c.timezone :t32
          end
          i.country 'AT', 'Austria' do |c|
            c.timezone 'Europe/Vienna', 2893, 60, 49, 3
          end
          i.country 'AU', 'Australia' do |c|
            c.timezone 'Australia/Lord_Howe', -631, 20, 1909, 12, 'Lord Howe Island'
            c.timezone 'Antarctica/Macquarie', -109, 2, 3179, 20, 'Macquarie Island'
            c.timezone 'Australia/Hobart', -2573, 60, 8839, 60, 'Tasmania'
            c.timezone 'Australia/Melbourne', -2269, 60, 4349, 30, 'Victoria'
            c.timezone 'Australia/Sydney', -508, 15, 9073, 60, 'New South Wales (most areas)'
            c.timezone 'Australia/Broken_Hill', -639, 20, 2829, 20, 'New South Wales (Yancowinna)'
            c.timezone 'Australia/Brisbane', -412, 15, 4591, 30, 'Queensland (most areas)'
            c.timezone 'Australia/Lindeman', -304, 15, 149, 1, 'Queensland (Whitsunday Islands)'
            c.timezone 'Australia/Adelaide', -419, 12, 1663, 12, 'South Australia'
            c.timezone 'Australia/Darwin', -187, 15, 785, 6, 'Northern Territory'
            c.timezone 'Australia/Perth', -639, 20, 2317, 20, 'Western Australia (most areas)'
            c.timezone 'Australia/Eucla', -1903, 60, 1933, 15, 'Western Australia (Eucla)'
          end
          i.country 'AW', 'Aruba' do |c|
            c.timezone :t8
          end
          i.country 'AX', 'Åland Islands' do |c|
            c.timezone :t21
          end
          i.country 'AZ', 'Azerbaijan' do |c|
            c.timezone 'Asia/Baku', 2423, 60, 997, 20
          end
          i.country 'BA', 'Bosnia & Herzegovina' do |c|
            c.timezone :t18
          end
          i.country 'BB', 'Barbados' do |c|
            c.timezone 'America/Barbados', 131, 10, -3577, 60
          end
          i.country 'BD', 'Bangladesh' do |c|
            c.timezone 'Asia/Dhaka', 1423, 60, 1085, 12
          end
          i.country 'BE', 'Belgium' do |c|
            c.timezone :t20
          end
          i.country 'BF', 'Burkina Faso' do |c|
            c.timezone :t1
          end
          i.country 'BG', 'Bulgaria' do |c|
            c.timezone 'Europe/Sofia', 2561, 60, 1399, 60
          end
          i.country 'BH', 'Bahrain' do |c|
            c.timezone :t13
          end
          i.country 'BI', 'Burundi' do |c|
            c.timezone :t4
          end
          i.country 'BJ', 'Benin' do |c|
            c.timezone :t3
          end
          i.country 'BL', 'St Barthelemy' do |c|
            c.timezone :t8
          end
          i.country 'BM', 'Bermuda' do |c|
            c.timezone 'Atlantic/Bermuda', 1937, 60, -1943, 30
          end
          i.country 'BN', 'Brunei' do |c|
            c.timezone :t12
          end
          i.country 'BO', 'Bolivia' do |c|
            c.timezone 'America/La_Paz', -33, 2, -1363, 20
          end
          i.country 'BQ', 'Caribbean NL' do |c|
            c.timezone :t8
          end
          i.country 'BR', 'Brazil' do |c|
            c.timezone 'America/Noronha', -77, 20, -389, 12, 'Atlantic islands'
            c.timezone 'America/Belem', -29, 20, -2909, 60, 'Pará (east); Amapá'
            c.timezone 'America/Fortaleza', -223, 60, -77, 2, 'Brazil (northeast: MA, PI, CE, RN, PB)'
            c.timezone 'America/Recife', -161, 20, -349, 10, 'Pernambuco'
            c.timezone 'America/Araguaina', -36, 5, -241, 5, 'Tocantins'
            c.timezone 'America/Maceio', -29, 3, -2143, 60, 'Alagoas, Sergipe'
            c.timezone 'America/Bahia', -779, 60, -2311, 60, 'Bahia'
            c.timezone 'America/Sao_Paulo', -353, 15, -2797, 60, 'Brazil (southeast: GO, DF, MG, ES, RJ, SP, PR, SC, RS)'
            c.timezone 'America/Campo_Grande', -409, 20, -3277, 60, 'Mato Grosso do Sul'
            c.timezone 'America/Cuiaba', -187, 12, -673, 12, 'Mato Grosso'
            c.timezone 'America/Santarem', -73, 30, -823, 15, 'Pará (west)'
            c.timezone 'America/Porto_Velho', -263, 30, -639, 10, 'Rondônia'
            c.timezone 'America/Boa_Vista', 169, 60, -182, 3, 'Roraima'
            c.timezone 'America/Manaus', -47, 15, -3601, 60, 'Amazonas (east)'
            c.timezone 'America/Eirunepe', -20, 3, -1048, 15, 'Amazonas (west)'
            c.timezone 'America/Rio_Branco', -299, 30, -339, 5, 'Acre'
          end
          i.country 'BS', 'Bahamas' do |c|
            c.timezone :t9
          end
          i.country 'BT', 'Bhutan' do |c|
            c.timezone 'Asia/Thimphu', 412, 15, 1793, 20
          end
          i.country 'BV', 'Bouvet Island'
          i.country 'BW', 'Botswana' do |c|
            c.timezone :t4
          end
          i.country 'BY', 'Belarus' do |c|
            c.timezone 'Europe/Minsk', 539, 10, 827, 30
          end
          i.country 'BZ', 'Belize' do |c|
            c.timezone 'America/Belize', 35, 2, -441, 5
          end
          i.country 'CA', 'Canada' do |c|
            c.timezone 'America/St_Johns', 1427, 30, -3163, 60, 'Newfoundland; Labrador (southeast)'
            c.timezone 'America/Halifax', 893, 20, -318, 5, 'Atlantic - NS (most areas); PE'
            c.timezone 'America/Glace_Bay', 231, 5, -1199, 20, 'Atlantic - NS (Cape Breton)'
            c.timezone 'America/Moncton', 461, 10, -3887, 60, 'Atlantic - New Brunswick'
            c.timezone 'America/Goose_Bay', 160, 3, -725, 12, 'Atlantic - Labrador (most areas)'
            c.timezone :t9
            c.timezone 'America/Iqaluit', 956, 15, -1027, 15, 'Eastern - NU (most areas)'
            c.timezone 'America/Winnipeg', 2993, 60, -1943, 20, 'Central - ON (west); Manitoba'
            c.timezone 'America/Resolute', 33613, 450, -22759, 240, 'Central - NU (Resolute)'
            c.timezone 'America/Rankin_Inlet', 3769, 60, -331499, 3600, 'Central - NU (central)'
            c.timezone 'America/Regina', 252, 5, -2093, 20, 'CST - SK (most areas)'
            c.timezone 'America/Swift_Current', 3017, 60, -647, 6, 'CST - SK (midwest)'
            c.timezone 'America/Edmonton', 1071, 20, -1702, 15, 'Mountain - AB; BC (E); NT (E); SK (W)'
            c.timezone 'America/Cambridge_Bay', 24881, 360, -37819, 360, 'Mountain - NU (west)'
            c.timezone 'America/Inuvik', 246059, 3600, -8023, 60, 'Mountain - NT (west)'
            c.timezone 'America/Dawson_Creek', 1673, 30, -3607, 30, 'MST - BC (Dawson Cr, Ft St John)'
            c.timezone 'America/Fort_Nelson', 294, 5, -1227, 10, 'MST - BC (Ft Nelson)'
            c.timezone 'America/Whitehorse', 3643, 60, -2701, 20, 'MST - Yukon (east)'
            c.timezone 'America/Dawson', 961, 15, -1673, 12, 'MST - Yukon (west)'
            c.timezone 'America/Vancouver', 739, 15, -7387, 60, 'Pacific - BC (most areas)'
            c.timezone :t6
            c.timezone :t8
            c.timezone :t7
          end
          i.country 'CC', 'Cocos (Keeling) Islands' do |c|
            c.timezone :t17
          end
          i.country 'CD', 'Congo (Dem. Rep.)' do |c|
            c.timezone :t4
            c.timezone :t3
          end
          i.country 'CF', 'Central African Rep.' do |c|
            c.timezone :t3
          end
          i.country 'CG', 'Congo (Rep.)' do |c|
            c.timezone :t3
          end
          i.country 'CH', 'Switzerland' do |c|
            c.timezone :t27
          end
          i.country 'CI', 'Côte d\'Ivoire' do |c|
            c.timezone :t1
          end
          i.country 'CK', 'Cook Islands' do |c|
            c.timezone 'Pacific/Rarotonga', -637, 30, -4793, 30
          end
          i.country 'CL', 'Chile' do |c|
            c.timezone 'America/Santiago', -669, 20, -212, 3, 'most of Chile'
            c.timezone 'America/Punta_Arenas', -1063, 20, -851, 12, 'Region of Magallanes'
            c.timezone 'Pacific/Easter', -543, 20, -3283, 30, 'Easter Island'
          end
          i.country 'CM', 'Cameroon' do |c|
            c.timezone :t3
          end
          i.country 'CN', 'China' do |c|
            c.timezone 'Asia/Shanghai', 937, 30, 1822, 15, 'Beijing Time'
            c.timezone :t16
          end
          i.country 'CO', 'Colombia' do |c|
            c.timezone 'America/Bogota', 23, 5, -889, 12
          end
          i.country 'CR', 'Costa Rica' do |c|
            c.timezone 'America/Costa_Rica', 149, 15, -1009, 12
          end
          i.country 'CU', 'Cuba' do |c|
            c.timezone 'America/Havana', 347, 15, -2471, 30
          end
          i.country 'CV', 'Cape Verde' do |c|
            c.timezone 'Atlantic/Cape_Verde', 179, 12, -1411, 60
          end
          i.country 'CW', 'Curaçao' do |c|
            c.timezone :t8
          end
          i.country 'CX', 'Christmas Island' do |c|
            c.timezone :t10
          end
          i.country 'CY', 'Cyprus' do |c|
            c.timezone 'Asia/Nicosia', 211, 6, 1001, 30, 'most of Cyprus'
            c.timezone 'Asia/Famagusta', 2107, 60, 679, 20, 'Northern Cyprus'
          end
          i.country 'CZ', 'Czech Republic' do |c|
            c.timezone :t24
          end
          i.country 'DE', 'Germany' do |c|
            c.timezone :t19
            c.timezone :t27
          end
          i.country 'DJ', 'Djibouti' do |c|
            c.timezone :t5
          end
          i.country 'DK', 'Denmark' do |c|
            c.timezone :t19
          end
          i.country 'DM', 'Dominica' do |c|
            c.timezone :t8
          end
          i.country 'DO', 'Dominican Republic' do |c|
            c.timezone 'America/Santo_Domingo', 277, 15, -699, 10
          end
          i.country 'DZ', 'Algeria' do |c|
            c.timezone 'Africa/Algiers', 2207, 60, 61, 20
          end
          i.country 'EC', 'Ecuador' do |c|
            c.timezone 'America/Guayaquil', -13, 6, -479, 6, 'Ecuador (mainland)'
            c.timezone 'Pacific/Galapagos', -9, 10, -448, 5, 'Galápagos Islands'
          end
          i.country 'EE', 'Estonia' do |c|
            c.timezone 'Europe/Tallinn', 713, 12, 99, 4
          end
          i.country 'EG', 'Egypt' do |c|
            c.timezone 'Africa/Cairo', 601, 20, 125, 4
          end
          i.country 'EH', 'Western Sahara' do |c|
            c.timezone 'Africa/El_Aaiun', 543, 20, -66, 5
          end
          i.country 'ER', 'Eritrea' do |c|
            c.timezone :t5
          end
          i.country 'ES', 'Spain' do |c|
            c.timezone 'Europe/Madrid', 202, 5, -221, 60, 'Spain (mainland)'
            c.timezone 'Africa/Ceuta', 2153, 60, -319, 60, 'Ceuta, Melilla'
            c.timezone 'Atlantic/Canary', 281, 10, -77, 5, 'Canary Islands'
          end
          i.country 'ET', 'Ethiopia' do |c|
            c.timezone :t5
          end
          i.country 'FI', 'Finland' do |c|
            c.timezone :t21
          end
          i.country 'FJ', 'Fiji' do |c|
            c.timezone 'Pacific/Fiji', -272, 15, 2141, 12
          end
          i.country 'FK', 'Falkland Islands' do |c|
            c.timezone 'Atlantic/Stanley', -517, 10, -1157, 20
          end
          i.country 'FM', 'Micronesia' do |c|
            c.timezone 'Pacific/Kosrae', 319, 60, 9779, 60, 'Kosrae'
            c.timezone :t33
            c.timezone :t30
          end
          i.country 'FO', 'Faroe Islands' do |c|
            c.timezone 'Atlantic/Faroe', 3721, 60, -203, 30
          end
          i.country 'FR', 'France' do |c|
            c.timezone :t23
          end
          i.country 'GA', 'Gabon' do |c|
            c.timezone :t3
          end
          i.country 'GB', 'Britain (UK)' do |c|
            c.timezone :t22
          end
          i.country 'GD', 'Grenada' do |c|
            c.timezone :t8
          end
          i.country 'GE', 'Georgia' do |c|
            c.timezone 'Asia/Tbilisi', 2503, 60, 2689, 60
          end
          i.country 'GF', 'French Guiana' do |c|
            c.timezone 'America/Cayenne', 74, 15, -157, 3
          end
          i.country 'GG', 'Guernsey' do |c|
            c.timezone :t22
          end
          i.country 'GH', 'Ghana' do |c|
            c.timezone :t1
          end
          i.country 'GI', 'Gibraltar' do |c|
            c.timezone 'Europe/Gibraltar', 542, 15, -107, 20
          end
          i.country 'GL', 'Greenland' do |c|
            c.timezone 'America/Nuuk', 3851, 60, -776, 15, 'most of Greenland'
            c.timezone 'America/Danmarkshavn', 2303, 30, -56, 3, 'National Park (east coast)'
            c.timezone 'America/Scoresbysund', 4229, 60, -659, 30, 'Scoresbysund/Ittoqqortoormiit'
            c.timezone 'America/Thule', 2297, 30, -4127, 60, 'Thule/Pituffik'
          end
          i.country 'GM', 'Gambia' do |c|
            c.timezone :t1
          end
          i.country 'GN', 'Guinea' do |c|
            c.timezone :t1
          end
          i.country 'GP', 'Guadeloupe' do |c|
            c.timezone :t8
          end
          i.country 'GQ', 'Equatorial Guinea' do |c|
            c.timezone :t3
          end
          i.country 'GR', 'Greece' do |c|
            c.timezone 'Europe/Athens', 1139, 30, 1423, 60
          end
          i.country 'GS', 'South Georgia & the South Sandwich Islands' do |c|
            c.timezone 'Atlantic/South_Georgia', -814, 15, -548, 15
          end
          i.country 'GT', 'Guatemala' do |c|
            c.timezone 'America/Guatemala', 439, 30, -5431, 60
          end
          i.country 'GU', 'Guam' do |c|
            c.timezone :t31
          end
          i.country 'GW', 'Guinea-Bissau' do |c|
            c.timezone 'Africa/Bissau', 237, 20, -187, 12
          end
          i.country 'GY', 'Guyana' do |c|
            c.timezone 'America/Guyana', 34, 5, -349, 6
          end
          i.country 'HK', 'Hong Kong' do |c|
            c.timezone 'Asia/Hong_Kong', 1337, 60, 2283, 20
          end
          i.country 'HM', 'Heard Island & McDonald Islands'
          i.country 'HN', 'Honduras' do |c|
            c.timezone 'America/Tegucigalpa', 141, 10, -5233, 60
          end
          i.country 'HR', 'Croatia' do |c|
            c.timezone :t18
          end
          i.country 'HT', 'Haiti' do |c|
            c.timezone 'America/Port-au-Prince', 278, 15, -217, 3
          end
          i.country 'HU', 'Hungary' do |c|
            c.timezone 'Europe/Budapest', 95, 2, 229, 12
          end
          i.country 'ID', 'Indonesia' do |c|
            c.timezone 'Asia/Jakarta', -37, 6, 534, 5, 'Java, Sumatra'
            c.timezone 'Asia/Pontianak', -1, 30, 328, 3, 'Borneo (west, central)'
            c.timezone 'Asia/Makassar', -307, 60, 597, 5, 'Borneo (east, south); Sulawesi/Celebes, Bali, Nusa Tengarra; Timor (west)'
            c.timezone 'Asia/Jayapura', -38, 15, 1407, 10, 'New Guinea (West Papua / Irian Jaya); Malukus/Moluccas'
          end
          i.country 'IE', 'Ireland' do |c|
            c.timezone 'Europe/Dublin', 160, 3, -25, 4
          end
          i.country 'IL', 'Israel' do |c|
            c.timezone 'Asia/Jerusalem', 11441, 360, 63403, 1800
          end
          i.country 'IM', 'Isle of Man' do |c|
            c.timezone :t22
          end
          i.country 'IN', 'India' do |c|
            c.timezone 'Asia/Kolkata', 338, 15, 2651, 30
          end
          i.country 'IO', 'British Indian Ocean Territory' do |c|
            c.timezone 'Indian/Chagos', -22, 3, 869, 12
          end
          i.country 'IQ', 'Iraq' do |c|
            c.timezone 'Asia/Baghdad', 667, 20, 533, 12
          end
          i.country 'IR', 'Iran' do |c|
            c.timezone 'Asia/Tehran', 107, 3, 1543, 30
          end
          i.country 'IS', 'Iceland' do |c|
            c.timezone :t1
          end
          i.country 'IT', 'Italy' do |c|
            c.timezone :t25
          end
          i.country 'JE', 'Jersey' do |c|
            c.timezone :t22
          end
          i.country 'JM', 'Jamaica' do |c|
            c.timezone 'America/Jamaica', 12937, 720, -11519, 150
          end
          i.country 'JO', 'Jordan' do |c|
            c.timezone 'Asia/Amman', 639, 20, 539, 15
          end
          i.country 'JP', 'Japan' do |c|
            c.timezone 'Asia/Tokyo', 32089, 900, 503081, 3600
          end
          i.country 'KE', 'Kenya' do |c|
            c.timezone :t5
          end
          i.country 'KG', 'Kyrgyzstan' do |c|
            c.timezone 'Asia/Bishkek', 429, 10, 373, 5
          end
          i.country 'KH', 'Cambodia' do |c|
            c.timezone :t10
          end
          i.country 'KI', 'Kiribati' do |c|
            c.timezone :t34
            c.timezone 'Pacific/Kanton', -167, 60, -10303, 60, 'Phoenix Islands'
            c.timezone 'Pacific/Kiritimati', 28, 15, -472, 3, 'Line Islands'
          end
          i.country 'KM', 'Comoros' do |c|
            c.timezone :t5
          end
          i.country 'KN', 'St Kitts & Nevis' do |c|
            c.timezone :t8
          end
          i.country 'KP', 'Korea (North)' do |c|
            c.timezone 'Asia/Pyongyang', 2341, 60, 503, 4
          end
          i.country 'KR', 'Korea (South)' do |c|
            c.timezone 'Asia/Seoul', 751, 20, 3809, 30
          end
          i.country 'KW', 'Kuwait' do |c|
            c.timezone :t14
          end
          i.country 'KY', 'Cayman Islands' do |c|
            c.timezone :t6
          end
          i.country 'KZ', 'Kazakhstan' do |c|
            c.timezone 'Asia/Almaty', 173, 4, 1539, 20, 'most of Kazakhstan'
            c.timezone 'Asia/Qyzylorda', 224, 5, 982, 15, 'Qyzylorda/Kyzylorda/Kzyl-Orda'
            c.timezone 'Asia/Qostanay', 266, 5, 3817, 60, 'Qostanay/Kostanay/Kustanay'
            c.timezone 'Asia/Aqtobe', 3017, 60, 343, 6, 'Aqtöbe/Aktobe'
            c.timezone 'Asia/Aqtau', 2671, 60, 754, 15, 'Mangghystaū/Mankistau'
            c.timezone 'Asia/Atyrau', 2827, 60, 779, 15, 'Atyraū/Atirau/Gur\'yev'
            c.timezone 'Asia/Oral', 3073, 60, 1027, 20, 'West Kazakhstan'
          end
          i.country 'LA', 'Laos' do |c|
            c.timezone :t10
          end
          i.country 'LB', 'Lebanon' do |c|
            c.timezone 'Asia/Beirut', 2033, 60, 71, 2
          end
          i.country 'LC', 'St Lucia' do |c|
            c.timezone :t8
          end
          i.country 'LI', 'Liechtenstein' do |c|
            c.timezone :t27
          end
          i.country 'LK', 'Sri Lanka' do |c|
            c.timezone 'Asia/Colombo', 104, 15, 1597, 20
          end
          i.country 'LR', 'Liberia' do |c|
            c.timezone 'Africa/Monrovia', 63, 10, -647, 60
          end
          i.country 'LS', 'Lesotho' do |c|
            c.timezone :t2
          end
          i.country 'LT', 'Lithuania' do |c|
            c.timezone 'Europe/Vilnius', 3281, 60, 1519, 60
          end
          i.country 'LU', 'Luxembourg' do |c|
            c.timezone :t20
          end
          i.country 'LV', 'Latvia' do |c|
            c.timezone 'Europe/Riga', 1139, 20, 241, 10
          end
          i.country 'LY', 'Libya' do |c|
            c.timezone 'Africa/Tripoli', 329, 10, 791, 60
          end
          i.country 'MA', 'Morocco' do |c|
            c.timezone 'Africa/Casablanca', 673, 20, -91, 12
          end
          i.country 'MC', 'Monaco' do |c|
            c.timezone :t23
          end
          i.country 'MD', 'Moldova' do |c|
            c.timezone 'Europe/Chisinau', 47, 1, 173, 6
          end
          i.country 'ME', 'Montenegro' do |c|
            c.timezone :t18
          end
          i.country 'MF', 'St Martin (French)' do |c|
            c.timezone :t8
          end
          i.country 'MG', 'Madagascar' do |c|
            c.timezone :t5
          end
          i.country 'MH', 'Marshall Islands' do |c|
            c.timezone 'Pacific/Kwajalein', 109, 12, 502, 3, 'Kwajalein'
            c.timezone :t34
          end
          i.country 'MK', 'North Macedonia' do |c|
            c.timezone :t18
          end
          i.country 'ML', 'Mali' do |c|
            c.timezone :t1
          end
          i.country 'MM', 'Myanmar (Burma)' do |c|
            c.timezone :t17
          end
          i.country 'MN', 'Mongolia' do |c|
            c.timezone 'Asia/Ulaanbaatar', 575, 12, 6413, 60, 'most of Mongolia'
            c.timezone 'Asia/Hovd', 2881, 60, 1833, 20, 'Bayan-Ölgii, Govi-Altai, Hovd, Uvs, Zavkhan'
            c.timezone 'Asia/Choibalsan', 721, 15, 229, 2, 'Dornod, Sükhbaatar'
          end
          i.country 'MO', 'Macau' do |c|
            c.timezone 'Asia/Macau', 7991, 360, 2725, 24
          end
          i.country 'MP', 'Northern Mariana Islands' do |c|
            c.timezone :t31
          end
          i.country 'MQ', 'Martinique' do |c|
            c.timezone 'America/Martinique', 73, 5, -733, 12
          end
          i.country 'MR', 'Mauritania' do |c|
            c.timezone :t1
          end
          i.country 'MS', 'Montserrat' do |c|
            c.timezone :t8
          end
          i.country 'MT', 'Malta' do |c|
            c.timezone 'Europe/Malta', 359, 10, 871, 60
          end
          i.country 'MU', 'Mauritius' do |c|
            c.timezone 'Indian/Mauritius', -121, 6, 115, 2
          end
          i.country 'MV', 'Maldives' do |c|
            c.timezone :t28
          end
          i.country 'MW', 'Malawi' do |c|
            c.timezone :t4
          end
          i.country 'MX', 'Mexico' do |c|
            c.timezone 'America/Mexico_City', 97, 5, -1983, 20, 'Central Mexico'
            c.timezone 'America/Cancun', 253, 12, -2603, 30, 'Quintana Roo'
            c.timezone 'America/Merida', 629, 30, -5377, 60, 'Campeche, Yucatán'
            c.timezone 'America/Monterrey', 77, 3, -6019, 60, 'Durango; Coahuila, Nuevo León, Tamaulipas (most areas)'
            c.timezone 'America/Matamoros', 155, 6, -195, 2, 'Coahuila, Nuevo León, Tamaulipas (US border)'
            c.timezone 'America/Chihuahua', 859, 30, -1273, 12, 'Chihuahua (most areas)'
            c.timezone 'America/Ciudad_Juarez', 476, 15, -6389, 60, 'Chihuahua (US border - west)'
            c.timezone 'America/Ojinaga', 887, 30, -1253, 12, 'Chihuahua (US border - east)'
            c.timezone 'America/Mazatlan', 1393, 60, -1277, 12, 'Baja California Sur, Nayarit (most areas), Sinaloa'
            c.timezone 'America/Bahia_Banderas', 104, 5, -421, 4, 'Bahía de Banderas'
            c.timezone 'America/Hermosillo', 436, 15, -3329, 30, 'Sonora'
            c.timezone 'America/Tijuana', 488, 15, -7021, 60, 'Baja California'
          end
          i.country 'MY', 'Malaysia' do |c|
            c.timezone :t12
            c.timezone :t15
          end
          i.country 'MZ', 'Mozambique' do |c|
            c.timezone :t4
          end
          i.country 'NA', 'Namibia' do |c|
            c.timezone 'Africa/Windhoek', -677, 30, 171, 10
          end
          i.country 'NC', 'New Caledonia' do |c|
            c.timezone 'Pacific/Noumea', -334, 15, 3329, 20
          end
          i.country 'NE', 'Niger' do |c|
            c.timezone :t3
          end
          i.country 'NF', 'Norfolk Island' do |c|
            c.timezone 'Pacific/Norfolk', -581, 20, 5039, 30
          end
          i.country 'NG', 'Nigeria' do |c|
            c.timezone :t3
          end
          i.country 'NI', 'Nicaragua' do |c|
            c.timezone 'America/Managua', 243, 20, -5177, 60
          end
          i.country 'NL', 'Netherlands' do |c|
            c.timezone :t20
          end
          i.country 'NO', 'Norway' do |c|
            c.timezone :t19
          end
          i.country 'NP', 'Nepal' do |c|
            c.timezone 'Asia/Kathmandu', 1663, 60, 5119, 60
          end
          i.country 'NR', 'Nauru' do |c|
            c.timezone 'Pacific/Nauru', -31, 60, 2003, 12
          end
          i.country 'NU', 'Niue' do |c|
            c.timezone 'Pacific/Niue', -1141, 60, -2039, 12
          end
          i.country 'NZ', 'New Zealand' do |c|
            c.timezone :t29
            c.timezone 'Pacific/Chatham', -879, 20, -3531, 20, 'Chatham Islands'
          end
          i.country 'OM', 'Oman' do |c|
            c.timezone :t11
          end
          i.country 'PA', 'Panama' do |c|
            c.timezone :t6
          end
          i.country 'PE', 'Peru' do |c|
            c.timezone 'America/Lima', -241, 20, -1541, 20
          end
          i.country 'PF', 'French Polynesia' do |c|
            c.timezone 'Pacific/Tahiti', -263, 15, -4487, 30, 'Society Islands'
            c.timezone 'Pacific/Marquesas', -9, 1, -279, 2, 'Marquesas Islands'
            c.timezone 'Pacific/Gambier', -347, 15, -2699, 20, 'Gambier Islands'
          end
          i.country 'PG', 'Papua New Guinea' do |c|
            c.timezone :t33
            c.timezone 'Pacific/Bougainville', -373, 60, 4667, 30, 'Bougainville'
          end
          i.country 'PH', 'Philippines' do |c|
            c.timezone 'Asia/Manila', 175, 12, 121, 1
          end
          i.country 'PK', 'Pakistan' do |c|
            c.timezone 'Asia/Karachi', 373, 15, 1341, 20
          end
          i.country 'PL', 'Poland' do |c|
            c.timezone 'Europe/Warsaw', 209, 4, 21, 1
          end
          i.country 'PM', 'St Pierre & Miquelon' do |c|
            c.timezone 'America/Miquelon', 941, 20, -169, 3
          end
          i.country 'PN', 'Pitcairn' do |c|
            c.timezone 'Pacific/Pitcairn', -376, 15, -1561, 12
          end
          i.country 'PR', 'Puerto Rico' do |c|
            c.timezone :t8
          end
          i.country 'PS', 'Palestine' do |c|
            c.timezone 'Asia/Gaza', 63, 2, 517, 15, 'Gaza Strip'
            c.timezone 'Asia/Hebron', 473, 15, 7019, 200, 'West Bank'
          end
          i.country 'PT', 'Portugal' do |c|
            c.timezone 'Europe/Lisbon', 2323, 60, -137, 15, 'Portugal (mainland)'
            c.timezone 'Atlantic/Madeira', 979, 30, -169, 10, 'Madeira Islands'
            c.timezone 'Atlantic/Azores', 566, 15, -77, 3, 'Azores'
          end
          i.country 'PW', 'Palau' do |c|
            c.timezone 'Pacific/Palau', 22, 3, 8069, 60
          end
          i.country 'PY', 'Paraguay' do |c|
            c.timezone 'America/Asuncion', -379, 15, -173, 3
          end
          i.country 'QA', 'Qatar' do |c|
            c.timezone :t13
          end
          i.country 'RE', 'Réunion' do |c|
            c.timezone :t11
          end
          i.country 'RO', 'Romania' do |c|
            c.timezone 'Europe/Bucharest', 1333, 30, 261, 10
          end
          i.country 'RS', 'Serbia' do |c|
            c.timezone :t18
          end
          i.country 'RU', 'Russia' do |c|
            c.timezone 'Europe/Kaliningrad', 3283, 60, 41, 2, 'MSK-01 - Kaliningrad'
            c.timezone 'Europe/Moscow', 66907, 1200, 8464, 225, 'MSK+00 - Moscow area'
            c.timezone :t26
            c.timezone 'Europe/Kirov', 293, 5, 993, 20, 'MSK+00 - Kirov'
            c.timezone 'Europe/Volgograd', 731, 15, 533, 12, 'MSK+00 - Volgograd'
            c.timezone 'Europe/Astrakhan', 927, 20, 961, 20, 'MSK+01 - Astrakhan'
            c.timezone 'Europe/Saratov', 1547, 30, 1381, 30, 'MSK+01 - Saratov'
            c.timezone 'Europe/Ulyanovsk', 163, 3, 242, 5, 'MSK+01 - Ulyanovsk'
            c.timezone 'Europe/Samara', 266, 5, 1003, 20, 'MSK+01 - Samara, Udmurtia'
            c.timezone 'Asia/Yekaterinburg', 1137, 20, 303, 5, 'MSK+02 - Urals'
            c.timezone 'Asia/Omsk', 55, 1, 367, 5, 'MSK+03 - Omsk'
            c.timezone 'Asia/Novosibirsk', 1651, 30, 995, 12, 'MSK+04 - Novosibirsk'
            c.timezone 'Asia/Barnaul', 1601, 30, 335, 4, 'MSK+04 - Altai'
            c.timezone 'Asia/Tomsk', 113, 2, 2549, 30, 'MSK+04 - Tomsk'
            c.timezone 'Asia/Novokuznetsk', 215, 4, 5227, 60, 'MSK+04 - Kemerovo'
            c.timezone 'Asia/Krasnoyarsk', 3361, 60, 557, 6, 'MSK+04 - Krasnoyarsk area'
            c.timezone 'Asia/Irkutsk', 784, 15, 313, 3, 'MSK+05 - Irkutsk, Buryatia'
            c.timezone 'Asia/Chita', 1041, 20, 1702, 15, 'MSK+06 - Zabaykalsky'
            c.timezone 'Asia/Yakutsk', 62, 1, 389, 3, 'MSK+06 - Lena River'
            c.timezone 'Asia/Khandyga', 225563, 3600, 243997, 1800, 'MSK+06 - Tomponsky, Ust-Maysky'
            c.timezone 'Asia/Vladivostok', 259, 6, 1979, 15, 'MSK+07 - Amur River'
            c.timezone 'Asia/Ust-Nera', 232417, 3600, 10742, 75, 'MSK+07 - Oymyakonsky'
            c.timezone 'Asia/Magadan', 1787, 30, 754, 5, 'MSK+08 - Magadan'
            c.timezone 'Asia/Sakhalin', 1409, 30, 1427, 10, 'MSK+08 - Sakhalin Island'
            c.timezone 'Asia/Srednekolymsk', 1012, 15, 9223, 60, 'MSK+08 - Sakha (E); N Kuril Is'
            c.timezone 'Asia/Kamchatka', 3181, 60, 3173, 20, 'MSK+09 - Kamchatka'
            c.timezone 'Asia/Anadyr', 259, 4, 10649, 60, 'MSK+09 - Bering Sea'
          end
          i.country 'RW', 'Rwanda' do |c|
            c.timezone :t4
          end
          i.country 'SA', 'Saudi Arabia' do |c|
            c.timezone :t14
          end
          i.country 'SB', 'Solomon Islands' do |c|
            c.timezone :t30
          end
          i.country 'SC', 'Seychelles' do |c|
            c.timezone :t11
          end
          i.country 'SD', 'Sudan' do |c|
            c.timezone 'Africa/Khartoum', 78, 5, 488, 15
          end
          i.country 'SE', 'Sweden' do |c|
            c.timezone :t19
          end
          i.country 'SG', 'Singapore' do |c|
            c.timezone :t15
          end
          i.country 'SH', 'St Helena' do |c|
            c.timezone :t1
          end
          i.country 'SI', 'Slovenia' do |c|
            c.timezone :t18
          end
          i.country 'SJ', 'Svalbard & Jan Mayen' do |c|
            c.timezone :t19
          end
          i.country 'SK', 'Slovakia' do |c|
            c.timezone :t24
          end
          i.country 'SL', 'Sierra Leone' do |c|
            c.timezone :t1
          end
          i.country 'SM', 'San Marino' do |c|
            c.timezone :t25
          end
          i.country 'SN', 'Senegal' do |c|
            c.timezone :t1
          end
          i.country 'SO', 'Somalia' do |c|
            c.timezone :t5
          end
          i.country 'SR', 'Suriname' do |c|
            c.timezone 'America/Paramaribo', 35, 6, -331, 6
          end
          i.country 'SS', 'South Sudan' do |c|
            c.timezone 'Africa/Juba', 97, 20, 1897, 60
          end
          i.country 'ST', 'Sao Tome & Principe' do |c|
            c.timezone 'Africa/Sao_Tome', 1, 3, 101, 15
          end
          i.country 'SV', 'El Salvador' do |c|
            c.timezone 'America/El_Salvador', 137, 10, -446, 5
          end
          i.country 'SX', 'St Maarten (Dutch)' do |c|
            c.timezone :t8
          end
          i.country 'SY', 'Syria' do |c|
            c.timezone 'Asia/Damascus', 67, 2, 363, 10
          end
          i.country 'SZ', 'Eswatini (Swaziland)' do |c|
            c.timezone :t2
          end
          i.country 'TC', 'Turks & Caicos Is' do |c|
            c.timezone 'America/Grand_Turk', 322, 15, -1067, 15
          end
          i.country 'TD', 'Chad' do |c|
            c.timezone 'Africa/Ndjamena', 727, 60, 301, 20
          end
          i.country 'TF', 'French S. Terr.' do |c|
            c.timezone :t11
            c.timezone :t28
          end
          i.country 'TG', 'Togo' do |c|
            c.timezone :t1
          end
          i.country 'TH', 'Thailand' do |c|
            c.timezone :t10
          end
          i.country 'TJ', 'Tajikistan' do |c|
            c.timezone 'Asia/Dushanbe', 463, 12, 344, 5
          end
          i.country 'TK', 'Tokelau' do |c|
            c.timezone 'Pacific/Fakaofo', -281, 30, -5137, 30
          end
          i.country 'TL', 'East Timor' do |c|
            c.timezone 'Asia/Dili', -171, 20, 1507, 12
          end
          i.country 'TM', 'Turkmenistan' do |c|
            c.timezone 'Asia/Ashgabat', 759, 20, 3503, 60
          end
          i.country 'TN', 'Tunisia' do |c|
            c.timezone 'Africa/Tunis', 184, 5, 611, 60
          end
          i.country 'TO', 'Tonga' do |c|
            c.timezone 'Pacific/Tongatapu', -317, 15, -876, 5
          end
          i.country 'TR', 'Turkey' do |c|
            c.timezone 'Europe/Istanbul', 2461, 60, 869, 30
          end
          i.country 'TT', 'Trinidad & Tobago' do |c|
            c.timezone :t8
          end
          i.country 'TV', 'Tuvalu' do |c|
            c.timezone :t34
          end
          i.country 'TW', 'Taiwan' do |c|
            c.timezone 'Asia/Taipei', 501, 20, 243, 2
          end
          i.country 'TZ', 'Tanzania' do |c|
            c.timezone :t5
          end
          i.country 'UA', 'Ukraine' do |c|
            c.timezone 'Europe/Kyiv', 1513, 30, 1831, 60, 'most of Ukraine'
            c.timezone :t26
          end
          i.country 'UG', 'Uganda' do |c|
            c.timezone :t5
          end
          i.country 'UM', 'US minor outlying islands' do |c|
            c.timezone :t32
            c.timezone :t34
          end
          i.country 'US', 'United States' do |c|
            c.timezone 'America/New_York', 48857, 1200, -266423, 3600, 'Eastern (most areas)'
            c.timezone 'America/Detroit', 152393, 3600, -19931, 240, 'Eastern - MI (most areas)'
            c.timezone 'America/Kentucky/Louisville', 9181, 240, -154367, 1800, 'Eastern - KY (Louisville area)'
            c.timezone 'America/Kentucky/Monticello', 132587, 3600, -101819, 1200, 'Eastern - KY (Wayne)'
            c.timezone 'America/Indiana/Indianapolis', 23861, 600, -310169, 3600, 'Eastern - IN (most areas)'
            c.timezone 'America/Indiana/Vincennes', 69619, 1800, -315103, 3600, 'Eastern - IN (Da, Du, K, Mn)'
            c.timezone 'America/Indiana/Winamac', 29557, 720, -311771, 3600, 'Eastern - IN (Pulaski)'
            c.timezone 'America/Indiana/Marengo', 17269, 450, -310841, 3600, 'Eastern - IN (Crawford)'
            c.timezone 'America/Indiana/Petersburg', 138571, 3600, -314203, 3600, 'Eastern - IN (Pike)'
            c.timezone 'America/Indiana/Vevay', 34873, 900, -153121, 1800, 'Eastern - IN (Switzerland)'
            c.timezone 'America/Chicago', 837, 20, -1753, 20, 'Central (most areas)'
            c.timezone 'America/Indiana/Tell_City', 136631, 3600, -312341, 3600, 'Central - IN (Perry)'
            c.timezone 'America/Indiana/Knox', 9911, 240, -693, 8, 'Central - IN (Starke)'
            c.timezone 'America/Menominee', 40597, 900, -105137, 1200, 'Central - MI (Wisconsin border)'
            c.timezone 'America/North_Dakota/Center', 169619, 3600, -121559, 1200, 'Central - ND (Oliver)'
            c.timezone 'America/North_Dakota/New_Salem', 9369, 200, -121693, 1200, 'Central - ND (Morton rural)'
            c.timezone 'America/North_Dakota/Beulah', 56717, 1200, -916, 9, 'Central - ND (Mercer)'
            c.timezone 'America/Denver', 47687, 1200, -125981, 1200, 'Mountain (most areas)'
            c.timezone 'America/Boise', 157009, 3600, -46481, 400, 'Mountain - ID (south); OR (east)'
            c.timezone :t7
            c.timezone 'America/Los_Angeles', 30647, 900, -212837, 1800, 'Pacific'
            c.timezone 'America/Anchorage', 44077, 720, -539641, 3600, 'Alaska (most areas)'
            c.timezone 'America/Juneau', 209887, 3600, -483911, 3600, 'Alaska - Juneau area'
            c.timezone 'America/Sitka', 41167, 720, -487087, 3600, 'Alaska - Sitka area'
            c.timezone 'America/Metlakatla', 198457, 3600, -18947, 144, 'Alaska - Annette Island'
            c.timezone 'America/Yakutat', 214369, 3600, -251509, 1800, 'Alaska - Yakutat'
            c.timezone 'America/Nome', 58051, 900, -595463, 3600, 'Alaska (west)'
            c.timezone 'America/Adak', 1297, 25, -635969, 3600, 'Alaska - western Aleutians'
            c.timezone 'Pacific/Honolulu', 15341, 720, -18943, 120, 'Hawaii'
          end
          i.country 'UY', 'Uruguay' do |c|
            c.timezone 'America/Montevideo', -41891, 1200, -4497, 80
          end
          i.country 'UZ', 'Uzbekistan' do |c|
            c.timezone 'Asia/Samarkand', 119, 3, 334, 5, 'Uzbekistan (west)'
            c.timezone 'Asia/Tashkent', 124, 3, 693, 10, 'Uzbekistan (east)'
          end
          i.country 'VA', 'Vatican City' do |c|
            c.timezone :t25
          end
          i.country 'VC', 'St Vincent' do |c|
            c.timezone :t8
          end
          i.country 'VE', 'Venezuela' do |c|
            c.timezone 'America/Caracas', 21, 2, -1004, 15
          end
          i.country 'VG', 'Virgin Islands (UK)' do |c|
            c.timezone :t8
          end
          i.country 'VI', 'Virgin Islands (US)' do |c|
            c.timezone :t8
          end
          i.country 'VN', 'Vietnam' do |c|
            c.timezone 'Asia/Ho_Chi_Minh', 43, 4, 320, 3, 'south Vietnam'
            c.timezone :t10
          end
          i.country 'VU', 'Vanuatu' do |c|
            c.timezone 'Pacific/Efate', -53, 3, 2021, 12
          end
          i.country 'WF', 'Wallis & Futuna' do |c|
            c.timezone :t34
          end
          i.country 'WS', 'Samoa (western)' do |c|
            c.timezone 'Pacific/Apia', -83, 6, -2576, 15
          end
          i.country 'YE', 'Yemen' do |c|
            c.timezone :t14
          end
          i.country 'YT', 'Mayotte' do |c|
            c.timezone :t5
          end
          i.country 'ZA', 'South Africa' do |c|
            c.timezone :t2
          end
          i.country 'ZM', 'Zambia' do |c|
            c.timezone :t4
          end
          i.country 'ZW', 'Zimbabwe' do |c|
            c.timezone :t4
          end
        end
      end
    end
  end
end
