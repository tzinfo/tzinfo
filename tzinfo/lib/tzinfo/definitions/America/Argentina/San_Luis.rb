require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module America
      module Argentina
        module San_Luis
          include TimezoneDefinition
          
          timezone 'America/Argentina/San_Luis' do |tz|
            tz.offset :o0, -15924, 0, :LMT
            tz.offset :o1, -15408, 0, :CMT
            tz.offset :o2, -14400, 0, :ART
            tz.offset :o3, -14400, 3600, :ARST
            tz.offset :o4, -10800, 0, :ART
            tz.offset :o5, -10800, 3600, :ARST
            tz.offset :o6, -14400, 0, :WART
            tz.offset :o7, -14400, 3600, :WARST
            
            tz.transition 1894, 10, :o1, 17374555327, 7200
            tz.transition 1920, 5, :o2, 1453467407, 600
            tz.transition 1930, 12, :o3, 7278935, 3
            tz.transition 1931, 4, :o2, 19411461, 8
            tz.transition 1931, 10, :o3, 7279889, 3
            tz.transition 1932, 3, :o2, 19414141, 8
            tz.transition 1932, 11, :o3, 7281038, 3
            tz.transition 1933, 3, :o2, 19417061, 8
            tz.transition 1933, 11, :o3, 7282133, 3
            tz.transition 1934, 3, :o2, 19419981, 8
            tz.transition 1934, 11, :o3, 7283228, 3
            tz.transition 1935, 3, :o2, 19422901, 8
            tz.transition 1935, 11, :o3, 7284323, 3
            tz.transition 1936, 3, :o2, 19425829, 8
            tz.transition 1936, 11, :o3, 7285421, 3
            tz.transition 1937, 3, :o2, 19428749, 8
            tz.transition 1937, 11, :o3, 7286516, 3
            tz.transition 1938, 3, :o2, 19431669, 8
            tz.transition 1938, 11, :o3, 7287611, 3
            tz.transition 1939, 3, :o2, 19434589, 8
            tz.transition 1939, 11, :o3, 7288706, 3
            tz.transition 1940, 3, :o2, 19437517, 8
            tz.transition 1940, 7, :o3, 7289435, 3
            tz.transition 1941, 6, :o2, 19441285, 8
            tz.transition 1941, 10, :o3, 7290848, 3
            tz.transition 1943, 8, :o2, 19447501, 8
            tz.transition 1943, 10, :o3, 7293038, 3
            tz.transition 1946, 3, :o2, 19455045, 8
            tz.transition 1946, 10, :o3, 7296284, 3
            tz.transition 1963, 10, :o2, 19506429, 8
            tz.transition 1963, 12, :o3, 7315136, 3
            tz.transition 1964, 3, :o2, 19507645, 8
            tz.transition 1964, 10, :o3, 7316051, 3
            tz.transition 1965, 3, :o2, 19510565, 8
            tz.transition 1965, 10, :o3, 7317146, 3
            tz.transition 1966, 3, :o2, 19513485, 8
            tz.transition 1966, 10, :o3, 7318241, 3
            tz.transition 1967, 4, :o2, 19516661, 8
            tz.transition 1967, 10, :o3, 7319294, 3
            tz.transition 1968, 4, :o2, 19519629, 8
            tz.transition 1968, 10, :o3, 7320407, 3
            tz.transition 1969, 4, :o2, 19522541, 8
            tz.transition 1969, 10, :o4, 7321499, 3
            tz.transition 1974, 1, :o5, 128142000
            tz.transition 1974, 5, :o4, 136605600
            tz.transition 1988, 12, :o5, 596948400
            tz.transition 1989, 3, :o4, 605066400
            tz.transition 1989, 10, :o5, 624423600
            tz.transition 1990, 3, :o6, 637380000
            tz.transition 1990, 10, :o7, 655963200
            tz.transition 1991, 3, :o6, 667796400
            tz.transition 1991, 6, :o4, 675748800
            tz.transition 1999, 10, :o7, 938919600
            tz.transition 2000, 3, :o4, 952052400
            tz.transition 2004, 5, :o6, 1085972400
            tz.transition 2004, 7, :o4, 1090728000
            tz.transition 2007, 12, :o5, 1198983600
            tz.transition 2008, 1, :o4, 1200880800
            tz.transition 2009, 3, :o6, 1237086000
            tz.transition 2009, 10, :o7, 1255838400
            tz.transition 2010, 3, :o6, 1269140400
            tz.transition 2010, 10, :o7, 1287288000
            tz.transition 2011, 3, :o6, 1300590000
            tz.transition 2011, 10, :o7, 1318737600
            tz.transition 2012, 3, :o6, 1332039600
            tz.transition 2012, 10, :o7, 1350792000
            tz.transition 2013, 3, :o6, 1363489200
            tz.transition 2013, 10, :o7, 1382241600
            tz.transition 2014, 3, :o6, 1394938800
            tz.transition 2014, 10, :o7, 1413691200
            tz.transition 2015, 3, :o6, 1426388400
            tz.transition 2015, 10, :o7, 1445140800
            tz.transition 2016, 3, :o6, 1458442800
            tz.transition 2016, 10, :o7, 1476590400
            tz.transition 2017, 3, :o6, 1489892400
            tz.transition 2017, 10, :o7, 1508040000
            tz.transition 2018, 3, :o6, 1521342000
            tz.transition 2018, 10, :o7, 1540094400
            tz.transition 2019, 3, :o6, 1552791600
            tz.transition 2019, 10, :o7, 1571544000
            tz.transition 2020, 3, :o6, 1584241200
            tz.transition 2020, 10, :o7, 1602993600
            tz.transition 2021, 3, :o6, 1616295600
            tz.transition 2021, 10, :o7, 1634443200
            tz.transition 2022, 3, :o6, 1647745200
            tz.transition 2022, 10, :o7, 1665892800
            tz.transition 2023, 3, :o6, 1679194800
            tz.transition 2023, 10, :o7, 1697342400
            tz.transition 2024, 3, :o6, 1710644400
            tz.transition 2024, 10, :o7, 1729396800
            tz.transition 2025, 3, :o6, 1742094000
            tz.transition 2025, 10, :o7, 1760846400
            tz.transition 2026, 3, :o6, 1773543600
            tz.transition 2026, 10, :o7, 1792296000
            tz.transition 2027, 3, :o6, 1805598000
            tz.transition 2027, 10, :o7, 1823745600
            tz.transition 2028, 3, :o6, 1837047600
            tz.transition 2028, 10, :o7, 1855195200
            tz.transition 2029, 3, :o6, 1868497200
            tz.transition 2029, 10, :o7, 1887249600
            tz.transition 2030, 3, :o6, 1899946800
            tz.transition 2030, 10, :o7, 1918699200
            tz.transition 2031, 3, :o6, 1931396400
            tz.transition 2031, 10, :o7, 1950148800
            tz.transition 2032, 3, :o6, 1963450800
            tz.transition 2032, 10, :o7, 1981598400
            tz.transition 2033, 3, :o6, 1994900400
            tz.transition 2033, 10, :o7, 2013048000
            tz.transition 2034, 3, :o6, 2026350000
            tz.transition 2034, 10, :o7, 2044497600
            tz.transition 2035, 3, :o6, 2057799600
            tz.transition 2035, 10, :o7, 2076552000
            tz.transition 2036, 3, :o6, 2089249200
            tz.transition 2036, 10, :o7, 2108001600
            tz.transition 2037, 3, :o6, 2120698800
            tz.transition 2037, 10, :o7, 2139451200
            tz.transition 2038, 3, :o6, 19724029, 8
            tz.transition 2038, 10, :o7, 7397141, 3
            tz.transition 2039, 3, :o6, 19726941, 8
            tz.transition 2039, 10, :o7, 7398233, 3
            tz.transition 2040, 3, :o6, 19729853, 8
            tz.transition 2040, 10, :o7, 7399346, 3
            tz.transition 2041, 3, :o6, 19732765, 8
            tz.transition 2041, 10, :o7, 7400438, 3
            tz.transition 2042, 3, :o6, 19735677, 8
            tz.transition 2042, 10, :o7, 7401530, 3
            tz.transition 2043, 3, :o6, 19738589, 8
            tz.transition 2043, 10, :o7, 7402622, 3
            tz.transition 2044, 3, :o6, 19741557, 8
            tz.transition 2044, 10, :o7, 7403714, 3
            tz.transition 2045, 3, :o6, 19744469, 8
            tz.transition 2045, 10, :o7, 7404806, 3
            tz.transition 2046, 3, :o6, 19747381, 8
            tz.transition 2046, 10, :o7, 7405919, 3
            tz.transition 2047, 3, :o6, 19750293, 8
            tz.transition 2047, 10, :o7, 7407011, 3
            tz.transition 2048, 3, :o6, 19753205, 8
            tz.transition 2048, 10, :o7, 7408103, 3
            tz.transition 2049, 3, :o6, 19756173, 8
            tz.transition 2049, 10, :o7, 7409195, 3
            tz.transition 2050, 3, :o6, 19759085, 8
          end
        end
      end
    end
  end
end
