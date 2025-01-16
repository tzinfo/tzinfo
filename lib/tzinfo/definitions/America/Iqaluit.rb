# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Iqaluit
        include TimezoneDefinition
        
        timezone 'America/Iqaluit' do |tz|
          tz.offset :o0, 0, 0, :'-00'
          tz.offset :o1, -18000, 3600, :EWT
          tz.offset :o2, -18000, 3600, :EPT
          tz.offset :o3, -18000, 0, :EST
          tz.offset :o4, -18000, 3600, :EDT
          tz.offset :o5, -21600, 0, :CST
          tz.offset :o6, -21600, 3600, :CDT
          
          tz.transition 1942, 8, :o1, 4861145, 2
          tz.transition 1945, 8, :o2, 58360379, 24
          tz.transition 1945, 9, :o3, 9726915, 4
          tz.transition 1972, 4, :o4, 73465200
          tz.transition 1972, 10, :o3, 89186400
          tz.transition 1973, 4, :o4, 104914800
          tz.transition 1973, 10, :o3, 120636000
          tz.transition 1974, 4, :o4, 136364400
          tz.transition 1974, 10, :o3, 152085600
          tz.transition 1975, 4, :o4, 167814000
          tz.transition 1975, 10, :o3, 183535200
          tz.transition 1976, 4, :o4, 199263600
          tz.transition 1976, 10, :o3, 215589600
          tz.transition 1977, 4, :o4, 230713200
          tz.transition 1977, 10, :o3, 247039200
          tz.transition 1978, 4, :o4, 262767600
          tz.transition 1978, 10, :o3, 278488800
          tz.transition 1979, 4, :o4, 294217200
          tz.transition 1979, 10, :o3, 309938400
          tz.transition 1980, 4, :o4, 325666800
          tz.transition 1980, 10, :o3, 341388000
          tz.transition 1981, 4, :o4, 357116400
          tz.transition 1981, 10, :o3, 372837600
          tz.transition 1982, 4, :o4, 388566000
          tz.transition 1982, 10, :o3, 404892000
          tz.transition 1983, 4, :o4, 420015600
          tz.transition 1983, 10, :o3, 436341600
          tz.transition 1984, 4, :o4, 452070000
          tz.transition 1984, 10, :o3, 467791200
          tz.transition 1985, 4, :o4, 483519600
          tz.transition 1985, 10, :o3, 499240800
          tz.transition 1986, 4, :o4, 514969200
          tz.transition 1986, 10, :o3, 530690400
          tz.transition 1987, 4, :o4, 544604400
          tz.transition 1987, 10, :o3, 562140000
          tz.transition 1988, 4, :o4, 576054000
          tz.transition 1988, 10, :o3, 594194400
          tz.transition 1989, 4, :o4, 607503600
          tz.transition 1989, 10, :o3, 625644000
          tz.transition 1990, 4, :o4, 638953200
          tz.transition 1990, 10, :o3, 657093600
          tz.transition 1991, 4, :o4, 671007600
          tz.transition 1991, 10, :o3, 688543200
          tz.transition 1992, 4, :o4, 702457200
          tz.transition 1992, 10, :o3, 719992800
          tz.transition 1993, 4, :o4, 733906800
          tz.transition 1993, 10, :o3, 752047200
          tz.transition 1994, 4, :o4, 765356400
          tz.transition 1994, 10, :o3, 783496800
          tz.transition 1995, 4, :o4, 796806000
          tz.transition 1995, 10, :o3, 814946400
          tz.transition 1996, 4, :o4, 828860400
          tz.transition 1996, 10, :o3, 846396000
          tz.transition 1997, 4, :o4, 860310000
          tz.transition 1997, 10, :o3, 877845600
          tz.transition 1998, 4, :o4, 891759600
          tz.transition 1998, 10, :o3, 909295200
          tz.transition 1999, 4, :o4, 923209200
          tz.transition 1999, 10, :o5, 941349600
          tz.transition 2000, 4, :o6, 954662400
          tz.transition 2000, 10, :o3, 972802800
          tz.transition 2001, 4, :o4, 986108400
          tz.transition 2001, 10, :o3, 1004248800
          tz.transition 2002, 4, :o4, 1018162800
          tz.transition 2002, 10, :o3, 1035698400
          tz.transition 2003, 4, :o4, 1049612400
          tz.transition 2003, 10, :o3, 1067148000
          tz.transition 2004, 4, :o4, 1081062000
          tz.transition 2004, 10, :o3, 1099202400
          tz.transition 2005, 4, :o4, 1112511600
          tz.transition 2005, 10, :o3, 1130652000
          tz.transition 2006, 4, :o4, 1143961200
          tz.transition 2006, 10, :o3, 1162101600
          tz.transition 2007, 3, :o4, 1173596400
          tz.transition 2007, 11, :o3, 1194156000
          tz.transition 2008, 3, :o4, 1205046000
          tz.transition 2008, 11, :o3, 1225605600
          tz.transition 2009, 3, :o4, 1236495600
          tz.transition 2009, 11, :o3, 1257055200
          tz.transition 2010, 3, :o4, 1268550000
          tz.transition 2010, 11, :o3, 1289109600
          tz.transition 2011, 3, :o4, 1299999600
          tz.transition 2011, 11, :o3, 1320559200
          tz.transition 2012, 3, :o4, 1331449200
          tz.transition 2012, 11, :o3, 1352008800
          tz.transition 2013, 3, :o4, 1362898800
          tz.transition 2013, 11, :o3, 1383458400
          tz.transition 2014, 3, :o4, 1394348400
          tz.transition 2014, 11, :o3, 1414908000
          tz.transition 2015, 3, :o4, 1425798000
          tz.transition 2015, 11, :o3, 1446357600
          tz.transition 2016, 3, :o4, 1457852400
          tz.transition 2016, 11, :o3, 1478412000
          tz.transition 2017, 3, :o4, 1489302000
          tz.transition 2017, 11, :o3, 1509861600
          tz.transition 2018, 3, :o4, 1520751600
          tz.transition 2018, 11, :o3, 1541311200
          tz.transition 2019, 3, :o4, 1552201200
          tz.transition 2019, 11, :o3, 1572760800
          tz.transition 2020, 3, :o4, 1583650800
          tz.transition 2020, 11, :o3, 1604210400
          tz.transition 2021, 3, :o4, 1615705200
          tz.transition 2021, 11, :o3, 1636264800
          tz.transition 2022, 3, :o4, 1647154800
          tz.transition 2022, 11, :o3, 1667714400
          tz.transition 2023, 3, :o4, 1678604400
          tz.transition 2023, 11, :o3, 1699164000
          tz.transition 2024, 3, :o4, 1710054000
          tz.transition 2024, 11, :o3, 1730613600
          tz.transition 2025, 3, :o4, 1741503600
          tz.transition 2025, 11, :o3, 1762063200
          tz.transition 2026, 3, :o4, 1772953200
          tz.transition 2026, 11, :o3, 1793512800
          tz.transition 2027, 3, :o4, 1805007600
          tz.transition 2027, 11, :o3, 1825567200
          tz.transition 2028, 3, :o4, 1836457200
          tz.transition 2028, 11, :o3, 1857016800
          tz.transition 2029, 3, :o4, 1867906800
          tz.transition 2029, 11, :o3, 1888466400
          tz.transition 2030, 3, :o4, 1899356400
          tz.transition 2030, 11, :o3, 1919916000
          tz.transition 2031, 3, :o4, 1930806000
          tz.transition 2031, 11, :o3, 1951365600
          tz.transition 2032, 3, :o4, 1962860400
          tz.transition 2032, 11, :o3, 1983420000
          tz.transition 2033, 3, :o4, 1994310000
          tz.transition 2033, 11, :o3, 2014869600
          tz.transition 2034, 3, :o4, 2025759600
          tz.transition 2034, 11, :o3, 2046319200
          tz.transition 2035, 3, :o4, 2057209200
          tz.transition 2035, 11, :o3, 2077768800
          tz.transition 2036, 3, :o4, 2088658800
          tz.transition 2036, 11, :o3, 2109218400
          tz.transition 2037, 3, :o4, 2120108400
          tz.transition 2037, 11, :o3, 2140668000
          tz.transition 2038, 3, :o4, 59171923, 24
          tz.transition 2038, 11, :o3, 9862939, 4
          tz.transition 2039, 3, :o4, 59180659, 24
          tz.transition 2039, 11, :o3, 9864395, 4
          tz.transition 2040, 3, :o4, 59189395, 24
          tz.transition 2040, 11, :o3, 9865851, 4
          tz.transition 2041, 3, :o4, 59198131, 24
          tz.transition 2041, 11, :o3, 9867307, 4
          tz.transition 2042, 3, :o4, 59206867, 24
          tz.transition 2042, 11, :o3, 9868763, 4
          tz.transition 2043, 3, :o4, 59215603, 24
          tz.transition 2043, 11, :o3, 9870219, 4
          tz.transition 2044, 3, :o4, 59224507, 24
          tz.transition 2044, 11, :o3, 9871703, 4
          tz.transition 2045, 3, :o4, 59233243, 24
          tz.transition 2045, 11, :o3, 9873159, 4
          tz.transition 2046, 3, :o4, 59241979, 24
          tz.transition 2046, 11, :o3, 9874615, 4
          tz.transition 2047, 3, :o4, 59250715, 24
          tz.transition 2047, 11, :o3, 9876071, 4
          tz.transition 2048, 3, :o4, 59259451, 24
          tz.transition 2048, 11, :o3, 9877527, 4
          tz.transition 2049, 3, :o4, 59268355, 24
          tz.transition 2049, 11, :o3, 9879011, 4
          tz.transition 2050, 3, :o4, 59277091, 24
          tz.transition 2050, 11, :o3, 9880467, 4
          tz.transition 2051, 3, :o4, 59285827, 24
          tz.transition 2051, 11, :o3, 9881923, 4
          tz.transition 2052, 3, :o4, 59294563, 24
          tz.transition 2052, 11, :o3, 9883379, 4
          tz.transition 2053, 3, :o4, 59303299, 24
          tz.transition 2053, 11, :o3, 9884835, 4
          tz.transition 2054, 3, :o4, 59312035, 24
          tz.transition 2054, 11, :o3, 9886291, 4
          tz.transition 2055, 3, :o4, 59320939, 24
          tz.transition 2055, 11, :o3, 9887775, 4
          tz.transition 2056, 3, :o4, 59329675, 24
          tz.transition 2056, 11, :o3, 9889231, 4
          tz.transition 2057, 3, :o4, 59338411, 24
          tz.transition 2057, 11, :o3, 9890687, 4
          tz.transition 2058, 3, :o4, 59347147, 24
          tz.transition 2058, 11, :o3, 9892143, 4
          tz.transition 2059, 3, :o4, 59355883, 24
          tz.transition 2059, 11, :o3, 9893599, 4
          tz.transition 2060, 3, :o4, 59364787, 24
          tz.transition 2060, 11, :o3, 9895083, 4
          tz.transition 2061, 3, :o4, 59373523, 24
          tz.transition 2061, 11, :o3, 9896539, 4
          tz.transition 2062, 3, :o4, 59382259, 24
          tz.transition 2062, 11, :o3, 9897995, 4
          tz.transition 2063, 3, :o4, 59390995, 24
          tz.transition 2063, 11, :o3, 9899451, 4
          tz.transition 2064, 3, :o4, 59399731, 24
          tz.transition 2064, 11, :o3, 9900907, 4
          tz.transition 2065, 3, :o4, 59408467, 24
          tz.transition 2065, 11, :o3, 9902363, 4
          tz.transition 2066, 3, :o4, 59417371, 24
          tz.transition 2066, 11, :o3, 9903847, 4
          tz.transition 2067, 3, :o4, 59426107, 24
          tz.transition 2067, 11, :o3, 9905303, 4
          tz.transition 2068, 3, :o4, 59434843, 24
          tz.transition 2068, 11, :o3, 9906759, 4
          tz.transition 2069, 3, :o4, 59443579, 24
          tz.transition 2069, 11, :o3, 9908215, 4
          tz.transition 2070, 3, :o4, 59452315, 24
          tz.transition 2070, 11, :o3, 9909671, 4
          tz.transition 2071, 3, :o4, 59461051, 24
          tz.transition 2071, 11, :o3, 9911127, 4
          tz.transition 2072, 3, :o4, 59469955, 24
          tz.transition 2072, 11, :o3, 9912611, 4
          tz.transition 2073, 3, :o4, 59478691, 24
          tz.transition 2073, 11, :o3, 9914067, 4
          tz.transition 2074, 3, :o4, 59487427, 24
          tz.transition 2074, 11, :o3, 9915523, 4
          tz.transition 2075, 3, :o4, 59496163, 24
          tz.transition 2075, 11, :o3, 9916979, 4
        end
      end
    end
  end
end
