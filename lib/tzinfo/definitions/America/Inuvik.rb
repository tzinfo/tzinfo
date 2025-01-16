# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Inuvik
        include TimezoneDefinition
        
        timezone 'America/Inuvik' do |tz|
          tz.offset :o0, 0, 0, :'-00'
          tz.offset :o1, -28800, 0, :PST
          tz.offset :o2, -28800, 3600, :PDT
          tz.offset :o3, -25200, 3600, :MDT
          tz.offset :o4, -25200, 0, :MST
          
          tz.transition 1953, 1, :o1, 4868757, 2
          tz.transition 1972, 4, :o2, 73476000
          tz.transition 1972, 10, :o1, 89197200
          tz.transition 1973, 4, :o2, 104925600
          tz.transition 1973, 10, :o1, 120646800
          tz.transition 1974, 4, :o2, 136375200
          tz.transition 1974, 10, :o1, 152096400
          tz.transition 1975, 4, :o2, 167824800
          tz.transition 1975, 10, :o1, 183546000
          tz.transition 1976, 4, :o2, 199274400
          tz.transition 1976, 10, :o1, 215600400
          tz.transition 1977, 4, :o2, 230724000
          tz.transition 1977, 10, :o1, 247050000
          tz.transition 1978, 4, :o2, 262778400
          tz.transition 1978, 10, :o1, 278499600
          tz.transition 1979, 4, :o3, 294228000
          tz.transition 1979, 10, :o4, 309945600
          tz.transition 1980, 4, :o3, 325674000
          tz.transition 1980, 10, :o4, 341395200
          tz.transition 1981, 4, :o3, 357123600
          tz.transition 1981, 10, :o4, 372844800
          tz.transition 1982, 4, :o3, 388573200
          tz.transition 1982, 10, :o4, 404899200
          tz.transition 1983, 4, :o3, 420022800
          tz.transition 1983, 10, :o4, 436348800
          tz.transition 1984, 4, :o3, 452077200
          tz.transition 1984, 10, :o4, 467798400
          tz.transition 1985, 4, :o3, 483526800
          tz.transition 1985, 10, :o4, 499248000
          tz.transition 1986, 4, :o3, 514976400
          tz.transition 1986, 10, :o4, 530697600
          tz.transition 1987, 4, :o3, 544611600
          tz.transition 1987, 10, :o4, 562147200
          tz.transition 1988, 4, :o3, 576061200
          tz.transition 1988, 10, :o4, 594201600
          tz.transition 1989, 4, :o3, 607510800
          tz.transition 1989, 10, :o4, 625651200
          tz.transition 1990, 4, :o3, 638960400
          tz.transition 1990, 10, :o4, 657100800
          tz.transition 1991, 4, :o3, 671014800
          tz.transition 1991, 10, :o4, 688550400
          tz.transition 1992, 4, :o3, 702464400
          tz.transition 1992, 10, :o4, 720000000
          tz.transition 1993, 4, :o3, 733914000
          tz.transition 1993, 10, :o4, 752054400
          tz.transition 1994, 4, :o3, 765363600
          tz.transition 1994, 10, :o4, 783504000
          tz.transition 1995, 4, :o3, 796813200
          tz.transition 1995, 10, :o4, 814953600
          tz.transition 1996, 4, :o3, 828867600
          tz.transition 1996, 10, :o4, 846403200
          tz.transition 1997, 4, :o3, 860317200
          tz.transition 1997, 10, :o4, 877852800
          tz.transition 1998, 4, :o3, 891766800
          tz.transition 1998, 10, :o4, 909302400
          tz.transition 1999, 4, :o3, 923216400
          tz.transition 1999, 10, :o4, 941356800
          tz.transition 2000, 4, :o3, 954666000
          tz.transition 2000, 10, :o4, 972806400
          tz.transition 2001, 4, :o3, 986115600
          tz.transition 2001, 10, :o4, 1004256000
          tz.transition 2002, 4, :o3, 1018170000
          tz.transition 2002, 10, :o4, 1035705600
          tz.transition 2003, 4, :o3, 1049619600
          tz.transition 2003, 10, :o4, 1067155200
          tz.transition 2004, 4, :o3, 1081069200
          tz.transition 2004, 10, :o4, 1099209600
          tz.transition 2005, 4, :o3, 1112518800
          tz.transition 2005, 10, :o4, 1130659200
          tz.transition 2006, 4, :o3, 1143968400
          tz.transition 2006, 10, :o4, 1162108800
          tz.transition 2007, 3, :o3, 1173603600
          tz.transition 2007, 11, :o4, 1194163200
          tz.transition 2008, 3, :o3, 1205053200
          tz.transition 2008, 11, :o4, 1225612800
          tz.transition 2009, 3, :o3, 1236502800
          tz.transition 2009, 11, :o4, 1257062400
          tz.transition 2010, 3, :o3, 1268557200
          tz.transition 2010, 11, :o4, 1289116800
          tz.transition 2011, 3, :o3, 1300006800
          tz.transition 2011, 11, :o4, 1320566400
          tz.transition 2012, 3, :o3, 1331456400
          tz.transition 2012, 11, :o4, 1352016000
          tz.transition 2013, 3, :o3, 1362906000
          tz.transition 2013, 11, :o4, 1383465600
          tz.transition 2014, 3, :o3, 1394355600
          tz.transition 2014, 11, :o4, 1414915200
          tz.transition 2015, 3, :o3, 1425805200
          tz.transition 2015, 11, :o4, 1446364800
          tz.transition 2016, 3, :o3, 1457859600
          tz.transition 2016, 11, :o4, 1478419200
          tz.transition 2017, 3, :o3, 1489309200
          tz.transition 2017, 11, :o4, 1509868800
          tz.transition 2018, 3, :o3, 1520758800
          tz.transition 2018, 11, :o4, 1541318400
          tz.transition 2019, 3, :o3, 1552208400
          tz.transition 2019, 11, :o4, 1572768000
          tz.transition 2020, 3, :o3, 1583658000
          tz.transition 2020, 11, :o4, 1604217600
          tz.transition 2021, 3, :o3, 1615712400
          tz.transition 2021, 11, :o4, 1636272000
          tz.transition 2022, 3, :o3, 1647162000
          tz.transition 2022, 11, :o4, 1667721600
          tz.transition 2023, 3, :o3, 1678611600
          tz.transition 2023, 11, :o4, 1699171200
          tz.transition 2024, 3, :o3, 1710061200
          tz.transition 2024, 11, :o4, 1730620800
          tz.transition 2025, 3, :o3, 1741510800
          tz.transition 2025, 11, :o4, 1762070400
          tz.transition 2026, 3, :o3, 1772960400
          tz.transition 2026, 11, :o4, 1793520000
          tz.transition 2027, 3, :o3, 1805014800
          tz.transition 2027, 11, :o4, 1825574400
          tz.transition 2028, 3, :o3, 1836464400
          tz.transition 2028, 11, :o4, 1857024000
          tz.transition 2029, 3, :o3, 1867914000
          tz.transition 2029, 11, :o4, 1888473600
          tz.transition 2030, 3, :o3, 1899363600
          tz.transition 2030, 11, :o4, 1919923200
          tz.transition 2031, 3, :o3, 1930813200
          tz.transition 2031, 11, :o4, 1951372800
          tz.transition 2032, 3, :o3, 1962867600
          tz.transition 2032, 11, :o4, 1983427200
          tz.transition 2033, 3, :o3, 1994317200
          tz.transition 2033, 11, :o4, 2014876800
          tz.transition 2034, 3, :o3, 2025766800
          tz.transition 2034, 11, :o4, 2046326400
          tz.transition 2035, 3, :o3, 2057216400
          tz.transition 2035, 11, :o4, 2077776000
          tz.transition 2036, 3, :o3, 2088666000
          tz.transition 2036, 11, :o4, 2109225600
          tz.transition 2037, 3, :o3, 2120115600
          tz.transition 2037, 11, :o4, 2140675200
          tz.transition 2038, 3, :o3, 19723975, 8
          tz.transition 2038, 11, :o4, 14794409, 6
          tz.transition 2039, 3, :o3, 19726887, 8
          tz.transition 2039, 11, :o4, 14796593, 6
          tz.transition 2040, 3, :o3, 19729799, 8
          tz.transition 2040, 11, :o4, 14798777, 6
          tz.transition 2041, 3, :o3, 19732711, 8
          tz.transition 2041, 11, :o4, 14800961, 6
          tz.transition 2042, 3, :o3, 19735623, 8
          tz.transition 2042, 11, :o4, 14803145, 6
          tz.transition 2043, 3, :o3, 19738535, 8
          tz.transition 2043, 11, :o4, 14805329, 6
          tz.transition 2044, 3, :o3, 19741503, 8
          tz.transition 2044, 11, :o4, 14807555, 6
          tz.transition 2045, 3, :o3, 19744415, 8
          tz.transition 2045, 11, :o4, 14809739, 6
          tz.transition 2046, 3, :o3, 19747327, 8
          tz.transition 2046, 11, :o4, 14811923, 6
          tz.transition 2047, 3, :o3, 19750239, 8
          tz.transition 2047, 11, :o4, 14814107, 6
          tz.transition 2048, 3, :o3, 19753151, 8
          tz.transition 2048, 11, :o4, 14816291, 6
          tz.transition 2049, 3, :o3, 19756119, 8
          tz.transition 2049, 11, :o4, 14818517, 6
          tz.transition 2050, 3, :o3, 19759031, 8
          tz.transition 2050, 11, :o4, 14820701, 6
          tz.transition 2051, 3, :o3, 19761943, 8
          tz.transition 2051, 11, :o4, 14822885, 6
          tz.transition 2052, 3, :o3, 19764855, 8
          tz.transition 2052, 11, :o4, 14825069, 6
          tz.transition 2053, 3, :o3, 19767767, 8
          tz.transition 2053, 11, :o4, 14827253, 6
          tz.transition 2054, 3, :o3, 19770679, 8
          tz.transition 2054, 11, :o4, 14829437, 6
          tz.transition 2055, 3, :o3, 19773647, 8
          tz.transition 2055, 11, :o4, 14831663, 6
          tz.transition 2056, 3, :o3, 19776559, 8
          tz.transition 2056, 11, :o4, 14833847, 6
          tz.transition 2057, 3, :o3, 19779471, 8
          tz.transition 2057, 11, :o4, 14836031, 6
          tz.transition 2058, 3, :o3, 19782383, 8
          tz.transition 2058, 11, :o4, 14838215, 6
          tz.transition 2059, 3, :o3, 19785295, 8
          tz.transition 2059, 11, :o4, 14840399, 6
          tz.transition 2060, 3, :o3, 19788263, 8
          tz.transition 2060, 11, :o4, 14842625, 6
          tz.transition 2061, 3, :o3, 19791175, 8
          tz.transition 2061, 11, :o4, 14844809, 6
          tz.transition 2062, 3, :o3, 19794087, 8
          tz.transition 2062, 11, :o4, 14846993, 6
          tz.transition 2063, 3, :o3, 19796999, 8
          tz.transition 2063, 11, :o4, 14849177, 6
          tz.transition 2064, 3, :o3, 19799911, 8
          tz.transition 2064, 11, :o4, 14851361, 6
          tz.transition 2065, 3, :o3, 19802823, 8
          tz.transition 2065, 11, :o4, 14853545, 6
          tz.transition 2066, 3, :o3, 19805791, 8
          tz.transition 2066, 11, :o4, 14855771, 6
          tz.transition 2067, 3, :o3, 19808703, 8
          tz.transition 2067, 11, :o4, 14857955, 6
          tz.transition 2068, 3, :o3, 19811615, 8
          tz.transition 2068, 11, :o4, 14860139, 6
          tz.transition 2069, 3, :o3, 19814527, 8
          tz.transition 2069, 11, :o4, 14862323, 6
          tz.transition 2070, 3, :o3, 19817439, 8
          tz.transition 2070, 11, :o4, 14864507, 6
          tz.transition 2071, 3, :o3, 19820351, 8
          tz.transition 2071, 11, :o4, 14866691, 6
          tz.transition 2072, 3, :o3, 19823319, 8
          tz.transition 2072, 11, :o4, 14868917, 6
          tz.transition 2073, 3, :o3, 19826231, 8
          tz.transition 2073, 11, :o4, 14871101, 6
          tz.transition 2074, 3, :o3, 19829143, 8
          tz.transition 2074, 11, :o4, 14873285, 6
          tz.transition 2075, 3, :o3, 19832055, 8
          tz.transition 2075, 11, :o4, 14875469, 6
        end
      end
    end
  end
end
