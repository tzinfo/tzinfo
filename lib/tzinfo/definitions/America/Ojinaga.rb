# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Ojinaga
        include TimezoneDefinition
        
        timezone 'America/Ojinaga' do |tz|
          tz.offset :o0, -25060, 0, :LMT
          tz.offset :o1, -25200, 0, :MST
          tz.offset :o2, -21600, 0, :CST
          tz.offset :o3, -25200, 3600, :MDT
          tz.offset :o4, -21600, 3600, :CDT
          
          tz.transition 1922, 1, :o1, 58153339, 24
          tz.transition 1927, 6, :o2, 58201003, 24
          tz.transition 1930, 11, :o1, 9705183, 4
          tz.transition 1931, 4, :o3, 58235083, 24
          tz.transition 1931, 10, :o1, 9706463, 4
          tz.transition 1932, 4, :o2, 58243171, 24
          tz.transition 1996, 4, :o4, 828864000
          tz.transition 1996, 10, :o2, 846399600
          tz.transition 1997, 4, :o4, 860313600
          tz.transition 1997, 10, :o2, 877849200
          tz.transition 1998, 4, :o3, 891766800
          tz.transition 1998, 10, :o1, 909302400
          tz.transition 1999, 4, :o3, 923216400
          tz.transition 1999, 10, :o1, 941356800
          tz.transition 2000, 4, :o3, 954666000
          tz.transition 2000, 10, :o1, 972806400
          tz.transition 2001, 5, :o3, 989139600
          tz.transition 2001, 9, :o1, 1001836800
          tz.transition 2002, 4, :o3, 1018170000
          tz.transition 2002, 10, :o1, 1035705600
          tz.transition 2003, 4, :o3, 1049619600
          tz.transition 2003, 10, :o1, 1067155200
          tz.transition 2004, 4, :o3, 1081069200
          tz.transition 2004, 10, :o1, 1099209600
          tz.transition 2005, 4, :o3, 1112518800
          tz.transition 2005, 10, :o1, 1130659200
          tz.transition 2006, 4, :o3, 1143968400
          tz.transition 2006, 10, :o1, 1162108800
          tz.transition 2007, 4, :o3, 1175418000
          tz.transition 2007, 10, :o1, 1193558400
          tz.transition 2008, 4, :o3, 1207472400
          tz.transition 2008, 10, :o1, 1225008000
          tz.transition 2009, 4, :o3, 1238922000
          tz.transition 2009, 10, :o1, 1256457600
          tz.transition 2010, 3, :o3, 1268557200
          tz.transition 2010, 11, :o1, 1289116800
          tz.transition 2011, 3, :o3, 1300006800
          tz.transition 2011, 11, :o1, 1320566400
          tz.transition 2012, 3, :o3, 1331456400
          tz.transition 2012, 11, :o1, 1352016000
          tz.transition 2013, 3, :o3, 1362906000
          tz.transition 2013, 11, :o1, 1383465600
          tz.transition 2014, 3, :o3, 1394355600
          tz.transition 2014, 11, :o1, 1414915200
          tz.transition 2015, 3, :o3, 1425805200
          tz.transition 2015, 11, :o1, 1446364800
          tz.transition 2016, 3, :o3, 1457859600
          tz.transition 2016, 11, :o1, 1478419200
          tz.transition 2017, 3, :o3, 1489309200
          tz.transition 2017, 11, :o1, 1509868800
          tz.transition 2018, 3, :o3, 1520758800
          tz.transition 2018, 11, :o1, 1541318400
          tz.transition 2019, 3, :o3, 1552208400
          tz.transition 2019, 11, :o1, 1572768000
          tz.transition 2020, 3, :o3, 1583658000
          tz.transition 2020, 11, :o1, 1604217600
          tz.transition 2021, 3, :o3, 1615712400
          tz.transition 2021, 11, :o1, 1636272000
          tz.transition 2022, 3, :o3, 1647162000
          tz.transition 2022, 10, :o2, 1667116800
          tz.transition 2023, 3, :o4, 1678608000
          tz.transition 2023, 11, :o2, 1699167600
          tz.transition 2024, 3, :o4, 1710057600
          tz.transition 2024, 11, :o2, 1730617200
          tz.transition 2025, 3, :o4, 1741507200
          tz.transition 2025, 11, :o2, 1762066800
          tz.transition 2026, 3, :o4, 1772956800
          tz.transition 2026, 11, :o2, 1793516400
          tz.transition 2027, 3, :o4, 1805011200
          tz.transition 2027, 11, :o2, 1825570800
          tz.transition 2028, 3, :o4, 1836460800
          tz.transition 2028, 11, :o2, 1857020400
          tz.transition 2029, 3, :o4, 1867910400
          tz.transition 2029, 11, :o2, 1888470000
          tz.transition 2030, 3, :o4, 1899360000
          tz.transition 2030, 11, :o2, 1919919600
          tz.transition 2031, 3, :o4, 1930809600
          tz.transition 2031, 11, :o2, 1951369200
          tz.transition 2032, 3, :o4, 1962864000
          tz.transition 2032, 11, :o2, 1983423600
          tz.transition 2033, 3, :o4, 1994313600
          tz.transition 2033, 11, :o2, 2014873200
          tz.transition 2034, 3, :o4, 2025763200
          tz.transition 2034, 11, :o2, 2046322800
          tz.transition 2035, 3, :o4, 2057212800
          tz.transition 2035, 11, :o2, 2077772400
          tz.transition 2036, 3, :o4, 2088662400
          tz.transition 2036, 11, :o2, 2109222000
          tz.transition 2037, 3, :o4, 2120112000
          tz.transition 2037, 11, :o2, 2140671600
          tz.transition 2038, 3, :o4, 14792981, 6
          tz.transition 2038, 11, :o2, 59177635, 24
          tz.transition 2039, 3, :o4, 14795165, 6
          tz.transition 2039, 11, :o2, 59186371, 24
          tz.transition 2040, 3, :o4, 14797349, 6
          tz.transition 2040, 11, :o2, 59195107, 24
          tz.transition 2041, 3, :o4, 14799533, 6
          tz.transition 2041, 11, :o2, 59203843, 24
          tz.transition 2042, 3, :o4, 14801717, 6
          tz.transition 2042, 11, :o2, 59212579, 24
          tz.transition 2043, 3, :o4, 14803901, 6
          tz.transition 2043, 11, :o2, 59221315, 24
          tz.transition 2044, 3, :o4, 14806127, 6
          tz.transition 2044, 11, :o2, 59230219, 24
          tz.transition 2045, 3, :o4, 14808311, 6
          tz.transition 2045, 11, :o2, 59238955, 24
          tz.transition 2046, 3, :o4, 14810495, 6
          tz.transition 2046, 11, :o2, 59247691, 24
          tz.transition 2047, 3, :o4, 14812679, 6
          tz.transition 2047, 11, :o2, 59256427, 24
          tz.transition 2048, 3, :o4, 14814863, 6
          tz.transition 2048, 11, :o2, 59265163, 24
          tz.transition 2049, 3, :o4, 14817089, 6
          tz.transition 2049, 11, :o2, 59274067, 24
          tz.transition 2050, 3, :o4, 14819273, 6
          tz.transition 2050, 11, :o2, 59282803, 24
          tz.transition 2051, 3, :o4, 14821457, 6
          tz.transition 2051, 11, :o2, 59291539, 24
          tz.transition 2052, 3, :o4, 14823641, 6
          tz.transition 2052, 11, :o2, 59300275, 24
          tz.transition 2053, 3, :o4, 14825825, 6
          tz.transition 2053, 11, :o2, 59309011, 24
          tz.transition 2054, 3, :o4, 14828009, 6
          tz.transition 2054, 11, :o2, 59317747, 24
          tz.transition 2055, 3, :o4, 14830235, 6
          tz.transition 2055, 11, :o2, 59326651, 24
          tz.transition 2056, 3, :o4, 14832419, 6
          tz.transition 2056, 11, :o2, 59335387, 24
          tz.transition 2057, 3, :o4, 14834603, 6
          tz.transition 2057, 11, :o2, 59344123, 24
          tz.transition 2058, 3, :o4, 14836787, 6
          tz.transition 2058, 11, :o2, 59352859, 24
          tz.transition 2059, 3, :o4, 14838971, 6
          tz.transition 2059, 11, :o2, 59361595, 24
          tz.transition 2060, 3, :o4, 14841197, 6
          tz.transition 2060, 11, :o2, 59370499, 24
          tz.transition 2061, 3, :o4, 14843381, 6
          tz.transition 2061, 11, :o2, 59379235, 24
          tz.transition 2062, 3, :o4, 14845565, 6
          tz.transition 2062, 11, :o2, 59387971, 24
          tz.transition 2063, 3, :o4, 14847749, 6
          tz.transition 2063, 11, :o2, 59396707, 24
          tz.transition 2064, 3, :o4, 14849933, 6
          tz.transition 2064, 11, :o2, 59405443, 24
          tz.transition 2065, 3, :o4, 14852117, 6
          tz.transition 2065, 11, :o2, 59414179, 24
          tz.transition 2066, 3, :o4, 14854343, 6
          tz.transition 2066, 11, :o2, 59423083, 24
          tz.transition 2067, 3, :o4, 14856527, 6
          tz.transition 2067, 11, :o2, 59431819, 24
          tz.transition 2068, 3, :o4, 14858711, 6
          tz.transition 2068, 11, :o2, 59440555, 24
          tz.transition 2069, 3, :o4, 14860895, 6
          tz.transition 2069, 11, :o2, 59449291, 24
          tz.transition 2070, 3, :o4, 14863079, 6
          tz.transition 2070, 11, :o2, 59458027, 24
          tz.transition 2071, 3, :o4, 14865263, 6
          tz.transition 2071, 11, :o2, 59466763, 24
          tz.transition 2072, 3, :o4, 14867489, 6
          tz.transition 2072, 11, :o2, 59475667, 24
          tz.transition 2073, 3, :o4, 14869673, 6
          tz.transition 2073, 11, :o2, 59484403, 24
          tz.transition 2074, 3, :o4, 14871857, 6
          tz.transition 2074, 11, :o2, 59493139, 24
        end
      end
    end
  end
end
