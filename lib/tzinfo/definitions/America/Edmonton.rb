# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Edmonton
        include TimezoneDefinition
        
        timezone 'America/Edmonton' do |tz|
          tz.offset :o0, -27232, 0, :LMT
          tz.offset :o1, -25200, 0, :MST
          tz.offset :o2, -25200, 3600, :MDT
          tz.offset :o3, -25200, 3600, :MWT
          tz.offset :o4, -25200, 3600, :MPT
          
          tz.transition 1906, 9, :o1, 6527128001, 2700
          tz.transition 1918, 4, :o2, 19373583, 8
          tz.transition 1918, 10, :o1, 14531363, 6
          tz.transition 1919, 4, :o2, 19376495, 8
          tz.transition 1919, 5, :o1, 14532635, 6
          tz.transition 1920, 4, :o2, 19379519, 8
          tz.transition 1920, 10, :o1, 14535773, 6
          tz.transition 1921, 4, :o2, 19382431, 8
          tz.transition 1921, 9, :o1, 14537747, 6
          tz.transition 1922, 4, :o2, 19385399, 8
          tz.transition 1922, 9, :o1, 14539931, 6
          tz.transition 1923, 4, :o2, 19388311, 8
          tz.transition 1923, 9, :o1, 14542157, 6
          tz.transition 1942, 2, :o3, 19443199, 8
          tz.transition 1945, 8, :o4, 58360379, 24
          tz.transition 1945, 9, :o1, 14590373, 6
          tz.transition 1947, 4, :o2, 19458423, 8
          tz.transition 1947, 9, :o1, 14594741, 6
          tz.transition 1972, 4, :o2, 73472400
          tz.transition 1972, 10, :o1, 89193600
          tz.transition 1973, 4, :o2, 104922000
          tz.transition 1973, 10, :o1, 120643200
          tz.transition 1974, 4, :o2, 136371600
          tz.transition 1974, 10, :o1, 152092800
          tz.transition 1975, 4, :o2, 167821200
          tz.transition 1975, 10, :o1, 183542400
          tz.transition 1976, 4, :o2, 199270800
          tz.transition 1976, 10, :o1, 215596800
          tz.transition 1977, 4, :o2, 230720400
          tz.transition 1977, 10, :o1, 247046400
          tz.transition 1978, 4, :o2, 262774800
          tz.transition 1978, 10, :o1, 278496000
          tz.transition 1979, 4, :o2, 294224400
          tz.transition 1979, 10, :o1, 309945600
          tz.transition 1980, 4, :o2, 325674000
          tz.transition 1980, 10, :o1, 341395200
          tz.transition 1981, 4, :o2, 357123600
          tz.transition 1981, 10, :o1, 372844800
          tz.transition 1982, 4, :o2, 388573200
          tz.transition 1982, 10, :o1, 404899200
          tz.transition 1983, 4, :o2, 420022800
          tz.transition 1983, 10, :o1, 436348800
          tz.transition 1984, 4, :o2, 452077200
          tz.transition 1984, 10, :o1, 467798400
          tz.transition 1985, 4, :o2, 483526800
          tz.transition 1985, 10, :o1, 499248000
          tz.transition 1986, 4, :o2, 514976400
          tz.transition 1986, 10, :o1, 530697600
          tz.transition 1987, 4, :o2, 544611600
          tz.transition 1987, 10, :o1, 562147200
          tz.transition 1988, 4, :o2, 576061200
          tz.transition 1988, 10, :o1, 594201600
          tz.transition 1989, 4, :o2, 607510800
          tz.transition 1989, 10, :o1, 625651200
          tz.transition 1990, 4, :o2, 638960400
          tz.transition 1990, 10, :o1, 657100800
          tz.transition 1991, 4, :o2, 671014800
          tz.transition 1991, 10, :o1, 688550400
          tz.transition 1992, 4, :o2, 702464400
          tz.transition 1992, 10, :o1, 720000000
          tz.transition 1993, 4, :o2, 733914000
          tz.transition 1993, 10, :o1, 752054400
          tz.transition 1994, 4, :o2, 765363600
          tz.transition 1994, 10, :o1, 783504000
          tz.transition 1995, 4, :o2, 796813200
          tz.transition 1995, 10, :o1, 814953600
          tz.transition 1996, 4, :o2, 828867600
          tz.transition 1996, 10, :o1, 846403200
          tz.transition 1997, 4, :o2, 860317200
          tz.transition 1997, 10, :o1, 877852800
          tz.transition 1998, 4, :o2, 891766800
          tz.transition 1998, 10, :o1, 909302400
          tz.transition 1999, 4, :o2, 923216400
          tz.transition 1999, 10, :o1, 941356800
          tz.transition 2000, 4, :o2, 954666000
          tz.transition 2000, 10, :o1, 972806400
          tz.transition 2001, 4, :o2, 986115600
          tz.transition 2001, 10, :o1, 1004256000
          tz.transition 2002, 4, :o2, 1018170000
          tz.transition 2002, 10, :o1, 1035705600
          tz.transition 2003, 4, :o2, 1049619600
          tz.transition 2003, 10, :o1, 1067155200
          tz.transition 2004, 4, :o2, 1081069200
          tz.transition 2004, 10, :o1, 1099209600
          tz.transition 2005, 4, :o2, 1112518800
          tz.transition 2005, 10, :o1, 1130659200
          tz.transition 2006, 4, :o2, 1143968400
          tz.transition 2006, 10, :o1, 1162108800
          tz.transition 2007, 3, :o2, 1173603600
          tz.transition 2007, 11, :o1, 1194163200
          tz.transition 2008, 3, :o2, 1205053200
          tz.transition 2008, 11, :o1, 1225612800
          tz.transition 2009, 3, :o2, 1236502800
          tz.transition 2009, 11, :o1, 1257062400
          tz.transition 2010, 3, :o2, 1268557200
          tz.transition 2010, 11, :o1, 1289116800
          tz.transition 2011, 3, :o2, 1300006800
          tz.transition 2011, 11, :o1, 1320566400
          tz.transition 2012, 3, :o2, 1331456400
          tz.transition 2012, 11, :o1, 1352016000
          tz.transition 2013, 3, :o2, 1362906000
          tz.transition 2013, 11, :o1, 1383465600
          tz.transition 2014, 3, :o2, 1394355600
          tz.transition 2014, 11, :o1, 1414915200
          tz.transition 2015, 3, :o2, 1425805200
          tz.transition 2015, 11, :o1, 1446364800
          tz.transition 2016, 3, :o2, 1457859600
          tz.transition 2016, 11, :o1, 1478419200
          tz.transition 2017, 3, :o2, 1489309200
          tz.transition 2017, 11, :o1, 1509868800
          tz.transition 2018, 3, :o2, 1520758800
          tz.transition 2018, 11, :o1, 1541318400
          tz.transition 2019, 3, :o2, 1552208400
          tz.transition 2019, 11, :o1, 1572768000
          tz.transition 2020, 3, :o2, 1583658000
          tz.transition 2020, 11, :o1, 1604217600
          tz.transition 2021, 3, :o2, 1615712400
          tz.transition 2021, 11, :o1, 1636272000
          tz.transition 2022, 3, :o2, 1647162000
          tz.transition 2022, 11, :o1, 1667721600
          tz.transition 2023, 3, :o2, 1678611600
          tz.transition 2023, 11, :o1, 1699171200
          tz.transition 2024, 3, :o2, 1710061200
          tz.transition 2024, 11, :o1, 1730620800
          tz.transition 2025, 3, :o2, 1741510800
          tz.transition 2025, 11, :o1, 1762070400
          tz.transition 2026, 3, :o2, 1772960400
          tz.transition 2026, 11, :o1, 1793520000
          tz.transition 2027, 3, :o2, 1805014800
          tz.transition 2027, 11, :o1, 1825574400
          tz.transition 2028, 3, :o2, 1836464400
          tz.transition 2028, 11, :o1, 1857024000
          tz.transition 2029, 3, :o2, 1867914000
          tz.transition 2029, 11, :o1, 1888473600
          tz.transition 2030, 3, :o2, 1899363600
          tz.transition 2030, 11, :o1, 1919923200
          tz.transition 2031, 3, :o2, 1930813200
          tz.transition 2031, 11, :o1, 1951372800
          tz.transition 2032, 3, :o2, 1962867600
          tz.transition 2032, 11, :o1, 1983427200
          tz.transition 2033, 3, :o2, 1994317200
          tz.transition 2033, 11, :o1, 2014876800
          tz.transition 2034, 3, :o2, 2025766800
          tz.transition 2034, 11, :o1, 2046326400
          tz.transition 2035, 3, :o2, 2057216400
          tz.transition 2035, 11, :o1, 2077776000
          tz.transition 2036, 3, :o2, 2088666000
          tz.transition 2036, 11, :o1, 2109225600
          tz.transition 2037, 3, :o2, 2120115600
          tz.transition 2037, 11, :o1, 2140675200
          tz.transition 2038, 3, :o2, 19723975, 8
          tz.transition 2038, 11, :o1, 14794409, 6
          tz.transition 2039, 3, :o2, 19726887, 8
          tz.transition 2039, 11, :o1, 14796593, 6
          tz.transition 2040, 3, :o2, 19729799, 8
          tz.transition 2040, 11, :o1, 14798777, 6
          tz.transition 2041, 3, :o2, 19732711, 8
          tz.transition 2041, 11, :o1, 14800961, 6
          tz.transition 2042, 3, :o2, 19735623, 8
          tz.transition 2042, 11, :o1, 14803145, 6
          tz.transition 2043, 3, :o2, 19738535, 8
          tz.transition 2043, 11, :o1, 14805329, 6
          tz.transition 2044, 3, :o2, 19741503, 8
          tz.transition 2044, 11, :o1, 14807555, 6
          tz.transition 2045, 3, :o2, 19744415, 8
          tz.transition 2045, 11, :o1, 14809739, 6
          tz.transition 2046, 3, :o2, 19747327, 8
          tz.transition 2046, 11, :o1, 14811923, 6
          tz.transition 2047, 3, :o2, 19750239, 8
          tz.transition 2047, 11, :o1, 14814107, 6
          tz.transition 2048, 3, :o2, 19753151, 8
          tz.transition 2048, 11, :o1, 14816291, 6
          tz.transition 2049, 3, :o2, 19756119, 8
          tz.transition 2049, 11, :o1, 14818517, 6
          tz.transition 2050, 3, :o2, 19759031, 8
          tz.transition 2050, 11, :o1, 14820701, 6
          tz.transition 2051, 3, :o2, 19761943, 8
          tz.transition 2051, 11, :o1, 14822885, 6
          tz.transition 2052, 3, :o2, 19764855, 8
          tz.transition 2052, 11, :o1, 14825069, 6
          tz.transition 2053, 3, :o2, 19767767, 8
          tz.transition 2053, 11, :o1, 14827253, 6
          tz.transition 2054, 3, :o2, 19770679, 8
          tz.transition 2054, 11, :o1, 14829437, 6
          tz.transition 2055, 3, :o2, 19773647, 8
          tz.transition 2055, 11, :o1, 14831663, 6
          tz.transition 2056, 3, :o2, 19776559, 8
          tz.transition 2056, 11, :o1, 14833847, 6
          tz.transition 2057, 3, :o2, 19779471, 8
          tz.transition 2057, 11, :o1, 14836031, 6
          tz.transition 2058, 3, :o2, 19782383, 8
          tz.transition 2058, 11, :o1, 14838215, 6
          tz.transition 2059, 3, :o2, 19785295, 8
          tz.transition 2059, 11, :o1, 14840399, 6
          tz.transition 2060, 3, :o2, 19788263, 8
          tz.transition 2060, 11, :o1, 14842625, 6
          tz.transition 2061, 3, :o2, 19791175, 8
          tz.transition 2061, 11, :o1, 14844809, 6
          tz.transition 2062, 3, :o2, 19794087, 8
          tz.transition 2062, 11, :o1, 14846993, 6
          tz.transition 2063, 3, :o2, 19796999, 8
          tz.transition 2063, 11, :o1, 14849177, 6
          tz.transition 2064, 3, :o2, 19799911, 8
          tz.transition 2064, 11, :o1, 14851361, 6
          tz.transition 2065, 3, :o2, 19802823, 8
          tz.transition 2065, 11, :o1, 14853545, 6
          tz.transition 2066, 3, :o2, 19805791, 8
          tz.transition 2066, 11, :o1, 14855771, 6
          tz.transition 2067, 3, :o2, 19808703, 8
          tz.transition 2067, 11, :o1, 14857955, 6
          tz.transition 2068, 3, :o2, 19811615, 8
          tz.transition 2068, 11, :o1, 14860139, 6
          tz.transition 2069, 3, :o2, 19814527, 8
          tz.transition 2069, 11, :o1, 14862323, 6
          tz.transition 2070, 3, :o2, 19817439, 8
          tz.transition 2070, 11, :o1, 14864507, 6
          tz.transition 2071, 3, :o2, 19820351, 8
          tz.transition 2071, 11, :o1, 14866691, 6
          tz.transition 2072, 3, :o2, 19823319, 8
          tz.transition 2072, 11, :o1, 14868917, 6
          tz.transition 2073, 3, :o2, 19826231, 8
          tz.transition 2073, 11, :o1, 14871101, 6
          tz.transition 2074, 3, :o2, 19829143, 8
          tz.transition 2074, 11, :o1, 14873285, 6
          tz.transition 2075, 3, :o2, 19832055, 8
          tz.transition 2075, 11, :o1, 14875469, 6
        end
      end
    end
  end
end
