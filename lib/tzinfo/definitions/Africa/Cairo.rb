# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Cairo
        include TimezoneDefinition
        
        timezone 'Africa/Cairo' do |tz|
          tz.offset :o0, 7509, 0, :LMT
          tz.offset :o1, 7200, 0, :EET
          tz.offset :o2, 7200, 3600, :EEST
          
          tz.transition 1900, 9, :o1, 69560450297, 28800
          tz.transition 1940, 7, :o2, 29157905, 12
          tz.transition 1940, 9, :o1, 19439227, 8
          tz.transition 1941, 4, :o2, 29161193, 12
          tz.transition 1941, 9, :o1, 19442027, 8
          tz.transition 1942, 3, :o2, 29165405, 12
          tz.transition 1942, 10, :o1, 19445275, 8
          tz.transition 1943, 3, :o2, 29169785, 12
          tz.transition 1943, 10, :o1, 19448235, 8
          tz.transition 1944, 3, :o2, 29174177, 12
          tz.transition 1944, 10, :o1, 19451163, 8
          tz.transition 1945, 4, :o2, 29178737, 12
          tz.transition 1945, 10, :o1, 19454083, 8
          tz.transition 1957, 5, :o2, 29231621, 12
          tz.transition 1957, 9, :o1, 19488899, 8
          tz.transition 1958, 4, :o2, 29235893, 12
          tz.transition 1958, 9, :o1, 19491819, 8
          tz.transition 1959, 4, :o2, 58480547, 24
          tz.transition 1959, 9, :o1, 4873683, 2
          tz.transition 1960, 4, :o2, 58489331, 24
          tz.transition 1960, 9, :o1, 4874415, 2
          tz.transition 1961, 4, :o2, 58498091, 24
          tz.transition 1961, 9, :o1, 4875145, 2
          tz.transition 1962, 4, :o2, 58506851, 24
          tz.transition 1962, 9, :o1, 4875875, 2
          tz.transition 1963, 4, :o2, 58515611, 24
          tz.transition 1963, 9, :o1, 4876605, 2
          tz.transition 1964, 4, :o2, 58524395, 24
          tz.transition 1964, 9, :o1, 4877337, 2
          tz.transition 1965, 4, :o2, 58533155, 24
          tz.transition 1965, 9, :o1, 4878067, 2
          tz.transition 1966, 4, :o2, 58541915, 24
          tz.transition 1966, 10, :o1, 4878799, 2
          tz.transition 1967, 4, :o2, 58550675, 24
          tz.transition 1967, 10, :o1, 4879529, 2
          tz.transition 1968, 4, :o2, 58559459, 24
          tz.transition 1968, 10, :o1, 4880261, 2
          tz.transition 1969, 4, :o2, 58568219, 24
          tz.transition 1969, 10, :o1, 4880991, 2
          tz.transition 1970, 4, :o2, 10364400
          tz.transition 1970, 10, :o1, 23587200
          tz.transition 1971, 4, :o2, 41900400
          tz.transition 1971, 10, :o1, 55123200
          tz.transition 1972, 4, :o2, 73522800
          tz.transition 1972, 10, :o1, 86745600
          tz.transition 1973, 4, :o2, 105058800
          tz.transition 1973, 10, :o1, 118281600
          tz.transition 1974, 4, :o2, 136594800
          tz.transition 1974, 10, :o1, 149817600
          tz.transition 1975, 4, :o2, 168130800
          tz.transition 1975, 10, :o1, 181353600
          tz.transition 1976, 4, :o2, 199753200
          tz.transition 1976, 10, :o1, 212976000
          tz.transition 1977, 4, :o2, 231289200
          tz.transition 1977, 10, :o1, 244512000
          tz.transition 1978, 4, :o2, 262825200
          tz.transition 1978, 10, :o1, 276048000
          tz.transition 1979, 4, :o2, 294361200
          tz.transition 1979, 10, :o1, 307584000
          tz.transition 1980, 4, :o2, 325983600
          tz.transition 1980, 10, :o1, 339206400
          tz.transition 1981, 4, :o2, 357519600
          tz.transition 1981, 10, :o1, 370742400
          tz.transition 1982, 7, :o2, 396399600
          tz.transition 1982, 10, :o1, 402278400
          tz.transition 1983, 7, :o2, 426812400
          tz.transition 1983, 10, :o1, 433814400
          tz.transition 1984, 4, :o2, 452214000
          tz.transition 1984, 10, :o1, 465436800
          tz.transition 1985, 4, :o2, 483750000
          tz.transition 1985, 10, :o1, 496972800
          tz.transition 1986, 4, :o2, 515286000
          tz.transition 1986, 10, :o1, 528508800
          tz.transition 1987, 4, :o2, 546822000
          tz.transition 1987, 10, :o1, 560044800
          tz.transition 1988, 4, :o2, 578444400
          tz.transition 1988, 10, :o1, 591667200
          tz.transition 1989, 5, :o2, 610412400
          tz.transition 1989, 10, :o1, 623203200
          tz.transition 1990, 4, :o2, 641516400
          tz.transition 1990, 10, :o1, 654739200
          tz.transition 1991, 4, :o2, 673052400
          tz.transition 1991, 10, :o1, 686275200
          tz.transition 1992, 4, :o2, 704674800
          tz.transition 1992, 10, :o1, 717897600
          tz.transition 1993, 4, :o2, 736210800
          tz.transition 1993, 10, :o1, 749433600
          tz.transition 1994, 4, :o2, 767746800
          tz.transition 1994, 10, :o1, 780969600
          tz.transition 1995, 4, :o2, 799020000
          tz.transition 1995, 9, :o1, 812322000
          tz.transition 1996, 4, :o2, 830469600
          tz.transition 1996, 9, :o1, 843771600
          tz.transition 1997, 4, :o2, 861919200
          tz.transition 1997, 9, :o1, 875221200
          tz.transition 1998, 4, :o2, 893368800
          tz.transition 1998, 9, :o1, 906670800
          tz.transition 1999, 4, :o2, 925423200
          tz.transition 1999, 9, :o1, 938725200
          tz.transition 2000, 4, :o2, 956872800
          tz.transition 2000, 9, :o1, 970174800
          tz.transition 2001, 4, :o2, 988322400
          tz.transition 2001, 9, :o1, 1001624400
          tz.transition 2002, 4, :o2, 1019772000
          tz.transition 2002, 9, :o1, 1033074000
          tz.transition 2003, 4, :o2, 1051221600
          tz.transition 2003, 9, :o1, 1064523600
          tz.transition 2004, 4, :o2, 1083276000
          tz.transition 2004, 9, :o1, 1096578000
          tz.transition 2005, 4, :o2, 1114725600
          tz.transition 2005, 9, :o1, 1128027600
          tz.transition 2006, 4, :o2, 1146175200
          tz.transition 2006, 9, :o1, 1158872400
          tz.transition 2007, 4, :o2, 1177624800
          tz.transition 2007, 9, :o1, 1189112400
          tz.transition 2008, 4, :o2, 1209074400
          tz.transition 2008, 8, :o1, 1219957200
          tz.transition 2009, 4, :o2, 1240524000
          tz.transition 2009, 8, :o1, 1250802000
          tz.transition 2010, 4, :o2, 1272578400
          tz.transition 2010, 8, :o1, 1281474000
          tz.transition 2010, 9, :o2, 1284069600
          tz.transition 2010, 9, :o1, 1285880400
          tz.transition 2014, 5, :o2, 1400191200
          tz.transition 2014, 6, :o1, 1403816400
          tz.transition 2014, 7, :o2, 1406844000
          tz.transition 2014, 9, :o1, 1411678800
          tz.transition 2023, 4, :o2, 1682632800
          tz.transition 2023, 10, :o1, 1698354000
          tz.transition 2024, 4, :o2, 1714082400
          tz.transition 2024, 10, :o1, 1730408400
          tz.transition 2025, 4, :o2, 1745532000
          tz.transition 2025, 10, :o1, 1761858000
          tz.transition 2026, 4, :o2, 1776981600
          tz.transition 2026, 10, :o1, 1793307600
          tz.transition 2027, 4, :o2, 1809036000
          tz.transition 2027, 10, :o1, 1824757200
          tz.transition 2028, 4, :o2, 1840485600
          tz.transition 2028, 10, :o1, 1856206800
          tz.transition 2029, 4, :o2, 1871935200
          tz.transition 2029, 10, :o1, 1887656400
          tz.transition 2030, 4, :o2, 1903384800
          tz.transition 2030, 10, :o1, 1919710800
          tz.transition 2031, 4, :o2, 1934834400
          tz.transition 2031, 10, :o1, 1951160400
          tz.transition 2032, 4, :o2, 1966888800
          tz.transition 2032, 10, :o1, 1982610000
          tz.transition 2033, 4, :o2, 1998338400
          tz.transition 2033, 10, :o1, 2014059600
          tz.transition 2034, 4, :o2, 2029788000
          tz.transition 2034, 10, :o1, 2045509200
          tz.transition 2035, 4, :o2, 2061237600
          tz.transition 2035, 10, :o1, 2076958800
          tz.transition 2036, 4, :o2, 2092687200
          tz.transition 2036, 10, :o1, 2109013200
          tz.transition 2037, 4, :o2, 2124136800
          tz.transition 2037, 10, :o1, 2140462800
          tz.transition 2038, 4, :o2, 29586521, 12
          tz.transition 2038, 10, :o1, 19725803, 8
          tz.transition 2039, 4, :o2, 29590889, 12
          tz.transition 2039, 10, :o1, 19728715, 8
          tz.transition 2040, 4, :o2, 29595257, 12
          tz.transition 2040, 10, :o1, 19731627, 8
          tz.transition 2041, 4, :o2, 29599625, 12
          tz.transition 2041, 10, :o1, 19734595, 8
          tz.transition 2042, 4, :o2, 29603993, 12
          tz.transition 2042, 10, :o1, 19737507, 8
          tz.transition 2043, 4, :o2, 29608361, 12
          tz.transition 2043, 10, :o1, 19740419, 8
          tz.transition 2044, 4, :o2, 29612813, 12
          tz.transition 2044, 10, :o1, 19743331, 8
          tz.transition 2045, 4, :o2, 29617181, 12
          tz.transition 2045, 10, :o1, 19746243, 8
          tz.transition 2046, 4, :o2, 29621549, 12
          tz.transition 2046, 10, :o1, 19749155, 8
          tz.transition 2047, 4, :o2, 29625917, 12
          tz.transition 2047, 10, :o1, 19752123, 8
          tz.transition 2048, 4, :o2, 29630285, 12
          tz.transition 2048, 10, :o1, 19755035, 8
          tz.transition 2049, 4, :o2, 29634737, 12
          tz.transition 2049, 10, :o1, 19757947, 8
          tz.transition 2050, 4, :o2, 29639105, 12
          tz.transition 2050, 10, :o1, 19760859, 8
          tz.transition 2051, 4, :o2, 29643473, 12
          tz.transition 2051, 10, :o1, 19763771, 8
          tz.transition 2052, 4, :o2, 29647841, 12
          tz.transition 2052, 10, :o1, 19766739, 8
          tz.transition 2053, 4, :o2, 29652209, 12
          tz.transition 2053, 10, :o1, 19769651, 8
          tz.transition 2054, 4, :o2, 29656577, 12
          tz.transition 2054, 10, :o1, 19772563, 8
          tz.transition 2055, 4, :o2, 29661029, 12
          tz.transition 2055, 10, :o1, 19775475, 8
          tz.transition 2056, 4, :o2, 29665397, 12
          tz.transition 2056, 10, :o1, 19778387, 8
          tz.transition 2057, 4, :o2, 29669765, 12
          tz.transition 2057, 10, :o1, 19781299, 8
          tz.transition 2058, 4, :o2, 29674133, 12
          tz.transition 2058, 10, :o1, 19784267, 8
          tz.transition 2059, 4, :o2, 29678501, 12
          tz.transition 2059, 10, :o1, 19787179, 8
          tz.transition 2060, 4, :o2, 29682953, 12
          tz.transition 2060, 10, :o1, 19790091, 8
          tz.transition 2061, 4, :o2, 29687321, 12
          tz.transition 2061, 10, :o1, 19793003, 8
          tz.transition 2062, 4, :o2, 29691689, 12
          tz.transition 2062, 10, :o1, 19795915, 8
          tz.transition 2063, 4, :o2, 29696057, 12
          tz.transition 2063, 10, :o1, 19798827, 8
          tz.transition 2064, 4, :o2, 29700425, 12
          tz.transition 2064, 10, :o1, 19801795, 8
          tz.transition 2065, 4, :o2, 29704793, 12
          tz.transition 2065, 10, :o1, 19804707, 8
          tz.transition 2066, 4, :o2, 29709245, 12
          tz.transition 2066, 10, :o1, 19807619, 8
          tz.transition 2067, 4, :o2, 29713613, 12
          tz.transition 2067, 10, :o1, 19810531, 8
          tz.transition 2068, 4, :o2, 29717981, 12
          tz.transition 2068, 10, :o1, 19813443, 8
          tz.transition 2069, 4, :o2, 29722349, 12
          tz.transition 2069, 10, :o1, 19816411, 8
          tz.transition 2070, 4, :o2, 29726717, 12
          tz.transition 2070, 10, :o1, 19819323, 8
          tz.transition 2071, 4, :o2, 29731085, 12
          tz.transition 2071, 10, :o1, 19822235, 8
          tz.transition 2072, 4, :o2, 29735537, 12
          tz.transition 2072, 10, :o1, 19825147, 8
          tz.transition 2073, 4, :o2, 29739905, 12
          tz.transition 2073, 10, :o1, 19828059, 8
          tz.transition 2074, 4, :o2, 29744273, 12
          tz.transition 2074, 10, :o1, 19830971, 8
          tz.transition 2075, 4, :o2, 29748641, 12
          tz.transition 2075, 10, :o1, 19833939, 8
        end
      end
    end
  end
end
