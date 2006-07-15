require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module America
      module Moncton
        include TimezoneDefinition
        
        timezone 'America/Moncton' do |tz|
          tz.offset :o0, -15548, 0, :LMT
          tz.offset :o1, -18000, 0, :EST
          tz.offset :o2, -14400, 0, :AST
          tz.offset :o3, -14400, 3600, :ADT
          tz.offset :o4, -14400, 3600, :AWT
          tz.offset :o5, -14400, 3600, :APT
          
          tz.transition 1883, 12, :o1, 52037719487, 21600
          tz.transition 1902, 6, :o2, 57981977, 24
          tz.transition 1918, 4, :o3, 9686791, 4
          tz.transition 1918, 10, :o2, 58125545, 24
          tz.transition 1933, 6, :o3, 58253633, 24
          tz.transition 1933, 9, :o2, 7281977, 3
          tz.transition 1934, 6, :o3, 58262369, 24
          tz.transition 1934, 9, :o2, 7283069, 3
          tz.transition 1935, 6, :o3, 58271105, 24
          tz.transition 1935, 9, :o2, 7284161, 3
          tz.transition 1936, 6, :o3, 58279841, 24
          tz.transition 1936, 9, :o2, 7285253, 3
          tz.transition 1937, 6, :o3, 58288577, 24
          tz.transition 1937, 9, :o2, 7286345, 3
          tz.transition 1938, 6, :o3, 58297313, 24
          tz.transition 1938, 9, :o2, 7287437, 3
          tz.transition 1939, 5, :o3, 58305857, 24
          tz.transition 1939, 9, :o2, 7288589, 3
          tz.transition 1940, 5, :o3, 58314449, 24
          tz.transition 1940, 9, :o2, 7289681, 3
          tz.transition 1941, 5, :o3, 58322849, 24
          tz.transition 1941, 9, :o2, 7290794, 3
          tz.transition 1942, 2, :o4, 9721599, 4
          tz.transition 1945, 8, :o5, 58360379, 24
          tz.transition 1945, 9, :o2, 58361489, 24
          tz.transition 1946, 4, :o3, 9727755, 4
          tz.transition 1946, 9, :o2, 58370225, 24
          tz.transition 1947, 4, :o3, 9729211, 4
          tz.transition 1947, 9, :o2, 58378961, 24
          tz.transition 1948, 4, :o3, 9730667, 4
          tz.transition 1948, 9, :o2, 58387697, 24
          tz.transition 1949, 4, :o3, 9732123, 4
          tz.transition 1949, 9, :o2, 58396433, 24
          tz.transition 1950, 4, :o3, 9733607, 4
          tz.transition 1950, 9, :o2, 58405169, 24
          tz.transition 1951, 4, :o3, 9735063, 4
          tz.transition 1951, 9, :o2, 58414073, 24
          tz.transition 1952, 4, :o3, 9736519, 4
          tz.transition 1952, 9, :o2, 58422809, 24
          tz.transition 1953, 4, :o3, 9737975, 4
          tz.transition 1953, 9, :o2, 58431545, 24
          tz.transition 1954, 4, :o3, 9739431, 4
          tz.transition 1954, 9, :o2, 58440281, 24
          tz.transition 1955, 4, :o3, 9740887, 4
          tz.transition 1955, 9, :o2, 58449017, 24
          tz.transition 1956, 4, :o3, 9742371, 4
          tz.transition 1956, 9, :o2, 58457921, 24
          tz.transition 1957, 4, :o3, 9743827, 4
          tz.transition 1957, 10, :o2, 58467329, 24
          tz.transition 1958, 4, :o3, 9745283, 4
          tz.transition 1958, 10, :o2, 58476065, 24
          tz.transition 1959, 4, :o3, 9746739, 4
          tz.transition 1959, 10, :o2, 58484801, 24
          tz.transition 1960, 4, :o3, 9748195, 4
          tz.transition 1960, 10, :o2, 58493705, 24
          tz.transition 1961, 4, :o3, 9749679, 4
          tz.transition 1961, 10, :o2, 58502441, 24
          tz.transition 1962, 4, :o3, 9751135, 4
          tz.transition 1962, 10, :o2, 58511177, 24
          tz.transition 1963, 4, :o3, 9752591, 4
          tz.transition 1963, 10, :o2, 58519913, 24
          tz.transition 1964, 4, :o3, 9754047, 4
          tz.transition 1964, 10, :o2, 58528649, 24
          tz.transition 1965, 4, :o3, 9755503, 4
          tz.transition 1965, 10, :o2, 58537553, 24
          tz.transition 1966, 4, :o3, 9756959, 4
          tz.transition 1966, 10, :o2, 58546289, 24
          tz.transition 1967, 4, :o3, 9758443, 4
          tz.transition 1967, 10, :o2, 58555025, 24
          tz.transition 1968, 4, :o3, 9759899, 4
          tz.transition 1968, 10, :o2, 58563761, 24
          tz.transition 1969, 4, :o3, 9761355, 4
          tz.transition 1969, 10, :o2, 58572497, 24
          tz.transition 1970, 4, :o3, 9957600
          tz.transition 1970, 10, :o2, 25678800
          tz.transition 1971, 4, :o3, 41407200
          tz.transition 1971, 10, :o2, 57733200
          tz.transition 1972, 4, :o3, 73461600
          tz.transition 1972, 10, :o2, 89182800
          tz.transition 1974, 4, :o3, 136360800
          tz.transition 1974, 10, :o2, 152082000
          tz.transition 1975, 4, :o3, 167810400
          tz.transition 1975, 10, :o2, 183531600
          tz.transition 1976, 4, :o3, 199260000
          tz.transition 1976, 10, :o2, 215586000
          tz.transition 1977, 4, :o3, 230709600
          tz.transition 1977, 10, :o2, 247035600
          tz.transition 1978, 4, :o3, 262764000
          tz.transition 1978, 10, :o2, 278485200
          tz.transition 1979, 4, :o3, 294213600
          tz.transition 1979, 10, :o2, 309934800
          tz.transition 1980, 4, :o3, 325663200
          tz.transition 1980, 10, :o2, 341384400
          tz.transition 1981, 4, :o3, 357112800
          tz.transition 1981, 10, :o2, 372834000
          tz.transition 1982, 4, :o3, 388562400
          tz.transition 1982, 10, :o2, 404888400
          tz.transition 1983, 4, :o3, 420012000
          tz.transition 1983, 10, :o2, 436338000
          tz.transition 1984, 4, :o3, 452066400
          tz.transition 1984, 10, :o2, 467787600
          tz.transition 1985, 4, :o3, 483516000
          tz.transition 1985, 10, :o2, 499237200
          tz.transition 1986, 4, :o3, 514965600
          tz.transition 1986, 10, :o2, 530686800
          tz.transition 1987, 4, :o3, 544600800
          tz.transition 1987, 10, :o2, 562136400
          tz.transition 1988, 4, :o3, 576050400
          tz.transition 1988, 10, :o2, 594190800
          tz.transition 1989, 4, :o3, 607500000
          tz.transition 1989, 10, :o2, 625640400
          tz.transition 1990, 4, :o3, 638949600
          tz.transition 1990, 10, :o2, 657090000
          tz.transition 1991, 4, :o3, 671004000
          tz.transition 1991, 10, :o2, 688539600
          tz.transition 1992, 4, :o3, 702453600
          tz.transition 1992, 10, :o2, 719989200
          tz.transition 1993, 4, :o3, 733896060
          tz.transition 1993, 10, :o2, 752036460
          tz.transition 1994, 4, :o3, 765345660
          tz.transition 1994, 10, :o2, 783486060
          tz.transition 1995, 4, :o3, 796795260
          tz.transition 1995, 10, :o2, 814935660
          tz.transition 1996, 4, :o3, 828849660
          tz.transition 1996, 10, :o2, 846385260
          tz.transition 1997, 4, :o3, 860299260
          tz.transition 1997, 10, :o2, 877834860
          tz.transition 1998, 4, :o3, 891748860
          tz.transition 1998, 10, :o2, 909284460
          tz.transition 1999, 4, :o3, 923198460
          tz.transition 1999, 10, :o2, 941338860
          tz.transition 2000, 4, :o3, 954648060
          tz.transition 2000, 10, :o2, 972788460
          tz.transition 2001, 4, :o3, 986097660
          tz.transition 2001, 10, :o2, 1004238060
          tz.transition 2002, 4, :o3, 1018152060
          tz.transition 2002, 10, :o2, 1035687660
          tz.transition 2003, 4, :o3, 1049601660
          tz.transition 2003, 10, :o2, 1067137260
          tz.transition 2004, 4, :o3, 1081051260
          tz.transition 2004, 10, :o2, 1099191660
          tz.transition 2005, 4, :o3, 1112500860
          tz.transition 2005, 10, :o2, 1130641260
          tz.transition 2006, 4, :o3, 1143950460
          tz.transition 2006, 10, :o2, 1162090860
          tz.transition 2007, 3, :o3, 1173585660
          tz.transition 2007, 11, :o2, 1194145260
          tz.transition 2008, 3, :o3, 1205035260
          tz.transition 2008, 11, :o2, 1225594860
          tz.transition 2009, 3, :o3, 1236484860
          tz.transition 2009, 11, :o2, 1257044460
          tz.transition 2010, 3, :o3, 1268539260
          tz.transition 2010, 11, :o2, 1289098860
          tz.transition 2011, 3, :o3, 1299988860
          tz.transition 2011, 11, :o2, 1320548460
          tz.transition 2012, 3, :o3, 1331438460
          tz.transition 2012, 11, :o2, 1351998060
          tz.transition 2013, 3, :o3, 1362888060
          tz.transition 2013, 11, :o2, 1383447660
          tz.transition 2014, 3, :o3, 1394337660
          tz.transition 2014, 11, :o2, 1414897260
          tz.transition 2015, 3, :o3, 1425787260
          tz.transition 2015, 11, :o2, 1446346860
          tz.transition 2016, 3, :o3, 1457841660
          tz.transition 2016, 11, :o2, 1478401260
          tz.transition 2017, 3, :o3, 1489291260
          tz.transition 2017, 11, :o2, 1509850860
          tz.transition 2018, 3, :o3, 1520740860
          tz.transition 2018, 11, :o2, 1541300460
          tz.transition 2019, 3, :o3, 1552190460
          tz.transition 2019, 11, :o2, 1572750060
          tz.transition 2020, 3, :o3, 1583640060
          tz.transition 2020, 11, :o2, 1604199660
          tz.transition 2021, 3, :o3, 1615694460
          tz.transition 2021, 11, :o2, 1636254060
          tz.transition 2022, 3, :o3, 1647144060
          tz.transition 2022, 11, :o2, 1667703660
          tz.transition 2023, 3, :o3, 1678593660
          tz.transition 2023, 11, :o2, 1699153260
          tz.transition 2024, 3, :o3, 1710043260
          tz.transition 2024, 11, :o2, 1730602860
          tz.transition 2025, 3, :o3, 1741492860
          tz.transition 2025, 11, :o2, 1762052460
          tz.transition 2026, 3, :o3, 1772942460
          tz.transition 2026, 11, :o2, 1793502060
          tz.transition 2027, 3, :o3, 1804996860
          tz.transition 2027, 11, :o2, 1825556460
          tz.transition 2028, 3, :o3, 1836446460
          tz.transition 2028, 11, :o2, 1857006060
          tz.transition 2029, 3, :o3, 1867896060
          tz.transition 2029, 11, :o2, 1888455660
          tz.transition 2030, 3, :o3, 1899345660
          tz.transition 2030, 11, :o2, 1919905260
          tz.transition 2031, 3, :o3, 1930795260
          tz.transition 2031, 11, :o2, 1951354860
          tz.transition 2032, 3, :o3, 1962849660
          tz.transition 2032, 11, :o2, 1983409260
          tz.transition 2033, 3, :o3, 1994299260
          tz.transition 2033, 11, :o2, 2014858860
          tz.transition 2034, 3, :o3, 2025748860
          tz.transition 2034, 11, :o2, 2046308460
          tz.transition 2035, 3, :o3, 2057198460
          tz.transition 2035, 11, :o2, 2077758060
          tz.transition 2036, 3, :o3, 2088648060
          tz.transition 2036, 11, :o2, 2109207660
          tz.transition 2037, 3, :o3, 2120097660
          tz.transition 2037, 11, :o2, 2140657260
          tz.transition 2038, 3, :o3, 3550315201, 1440
          tz.transition 2038, 11, :o2, 3550657861, 1440
          tz.transition 2039, 3, :o3, 3550839361, 1440
          tz.transition 2039, 11, :o2, 3551182021, 1440
          tz.transition 2040, 3, :o3, 3551363521, 1440
          tz.transition 2040, 11, :o2, 3551706181, 1440
          tz.transition 2041, 3, :o3, 3551887681, 1440
          tz.transition 2041, 11, :o2, 3552230341, 1440
          tz.transition 2042, 3, :o3, 3552411841, 1440
          tz.transition 2042, 11, :o2, 3552754501, 1440
          tz.transition 2043, 3, :o3, 3552936001, 1440
          tz.transition 2043, 11, :o2, 3553278661, 1440
          tz.transition 2044, 3, :o3, 3553470241, 1440
          tz.transition 2044, 11, :o2, 3553812901, 1440
          tz.transition 2045, 3, :o3, 3553994401, 1440
          tz.transition 2045, 11, :o2, 3554337061, 1440
          tz.transition 2046, 3, :o3, 3554518561, 1440
          tz.transition 2046, 11, :o2, 3554861221, 1440
          tz.transition 2047, 3, :o3, 3555042721, 1440
          tz.transition 2047, 11, :o2, 3555385381, 1440
          tz.transition 2048, 3, :o3, 3555566881, 1440
          tz.transition 2048, 11, :o2, 3555909541, 1440
          tz.transition 2049, 3, :o3, 3556101121, 1440
          tz.transition 2049, 11, :o2, 3556443781, 1440
          tz.transition 2050, 3, :o3, 3556625281, 1440
          tz.transition 2050, 11, :o2, 3556967941, 1440
        end
      end
    end
  end
end
