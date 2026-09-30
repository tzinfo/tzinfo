# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Winnipeg
        include TimezoneDefinition
        
        timezone 'America/Winnipeg' do |tz|
          tz.offset :o0, -23316, 0, :LMT
          tz.offset :o1, -21600, 0, :CST
          tz.offset :o2, -21600, 3600, :CDT
          tz.offset :o3, -21600, 3600, :CWT
          tz.offset :o4, -21600, 3600, :CPT
          tz.offset :o5, -18000, 0, :EST
          
          tz.transition 1887, 7, :o1, 17355375143, 7200
          tz.transition 1916, 4, :o2, 9683907, 4
          tz.transition 1916, 9, :o1, 58106969, 24
          tz.transition 1918, 4, :o2, 14530187, 6
          tz.transition 1918, 10, :o1, 58125451, 24
          tz.transition 1937, 5, :o2, 14572019, 6
          tz.transition 1937, 9, :o1, 58291267, 24
          tz.transition 1942, 2, :o3, 14582399, 6
          tz.transition 1945, 8, :o4, 58360379, 24
          tz.transition 1945, 9, :o1, 58361491, 24
          tz.transition 1946, 5, :o2, 14591717, 6
          tz.transition 1946, 10, :o1, 58370563, 24
          tz.transition 1947, 4, :o2, 14593817, 6
          tz.transition 1947, 9, :o1, 58378963, 24
          tz.transition 1948, 4, :o2, 14596001, 6
          tz.transition 1948, 9, :o1, 58387699, 24
          tz.transition 1949, 4, :o2, 14598185, 6
          tz.transition 1949, 9, :o1, 58396435, 24
          tz.transition 1950, 5, :o2, 14600417, 6
          tz.transition 1950, 9, :o1, 58405315, 24
          tz.transition 1951, 4, :o2, 14602595, 6
          tz.transition 1951, 9, :o1, 58414075, 24
          tz.transition 1952, 4, :o2, 14604779, 6
          tz.transition 1952, 9, :o1, 58422811, 24
          tz.transition 1953, 4, :o2, 14606963, 6
          tz.transition 1953, 9, :o1, 58431547, 24
          tz.transition 1954, 4, :o2, 14609147, 6
          tz.transition 1954, 9, :o1, 58440283, 24
          tz.transition 1955, 4, :o2, 14611331, 6
          tz.transition 1955, 9, :o1, 58449019, 24
          tz.transition 1956, 4, :o2, 14613557, 6
          tz.transition 1956, 9, :o1, 58457923, 24
          tz.transition 1957, 4, :o2, 14615741, 6
          tz.transition 1957, 9, :o1, 58466659, 24
          tz.transition 1958, 4, :o2, 14617925, 6
          tz.transition 1958, 9, :o1, 58475395, 24
          tz.transition 1959, 4, :o2, 14620109, 6
          tz.transition 1959, 10, :o1, 58484803, 24
          tz.transition 1960, 4, :o2, 14622293, 6
          tz.transition 1960, 9, :o1, 58492867, 24
          tz.transition 1963, 4, :o2, 14628887, 6
          tz.transition 1963, 9, :o1, 58519075, 24
          tz.transition 1966, 4, :o2, 14635439, 6
          tz.transition 1966, 10, :o1, 14636573, 6
          tz.transition 1967, 4, :o2, 14637665, 6
          tz.transition 1967, 10, :o1, 14638757, 6
          tz.transition 1968, 4, :o2, 14639849, 6
          tz.transition 1968, 10, :o1, 14640941, 6
          tz.transition 1969, 4, :o2, 14642033, 6
          tz.transition 1969, 10, :o1, 14643125, 6
          tz.transition 1970, 4, :o2, 9964800
          tz.transition 1970, 10, :o1, 25689600
          tz.transition 1971, 4, :o2, 41414400
          tz.transition 1971, 10, :o1, 57744000
          tz.transition 1972, 4, :o2, 73468800
          tz.transition 1972, 10, :o1, 89193600
          tz.transition 1973, 4, :o2, 104918400
          tz.transition 1973, 10, :o1, 120643200
          tz.transition 1974, 4, :o2, 136368000
          tz.transition 1974, 10, :o1, 152092800
          tz.transition 1975, 4, :o2, 167817600
          tz.transition 1975, 10, :o1, 183542400
          tz.transition 1976, 4, :o2, 199267200
          tz.transition 1976, 10, :o1, 215596800
          tz.transition 1977, 4, :o2, 230716800
          tz.transition 1977, 10, :o1, 247046400
          tz.transition 1978, 4, :o2, 262771200
          tz.transition 1978, 10, :o1, 278496000
          tz.transition 1979, 4, :o2, 294220800
          tz.transition 1979, 10, :o1, 309945600
          tz.transition 1980, 4, :o2, 325670400
          tz.transition 1980, 10, :o1, 341395200
          tz.transition 1981, 4, :o2, 357120000
          tz.transition 1981, 10, :o1, 372844800
          tz.transition 1982, 4, :o2, 388569600
          tz.transition 1982, 10, :o1, 404899200
          tz.transition 1983, 4, :o2, 420019200
          tz.transition 1983, 10, :o1, 436348800
          tz.transition 1984, 4, :o2, 452073600
          tz.transition 1984, 10, :o1, 467798400
          tz.transition 1985, 4, :o2, 483523200
          tz.transition 1985, 10, :o1, 499248000
          tz.transition 1986, 4, :o2, 514972800
          tz.transition 1986, 10, :o1, 530697600
          tz.transition 1987, 4, :o2, 544608000
          tz.transition 1987, 10, :o1, 562147200
          tz.transition 1988, 4, :o2, 576057600
          tz.transition 1988, 10, :o1, 594201600
          tz.transition 1989, 4, :o2, 607507200
          tz.transition 1989, 10, :o1, 625651200
          tz.transition 1990, 4, :o2, 638956800
          tz.transition 1990, 10, :o1, 657100800
          tz.transition 1991, 4, :o2, 671011200
          tz.transition 1991, 10, :o1, 688550400
          tz.transition 1992, 4, :o2, 702460800
          tz.transition 1992, 10, :o1, 720000000
          tz.transition 1993, 4, :o2, 733910400
          tz.transition 1993, 10, :o1, 752054400
          tz.transition 1994, 4, :o2, 765360000
          tz.transition 1994, 10, :o1, 783504000
          tz.transition 1995, 4, :o2, 796809600
          tz.transition 1995, 10, :o1, 814953600
          tz.transition 1996, 4, :o2, 828864000
          tz.transition 1996, 10, :o1, 846403200
          tz.transition 1997, 4, :o2, 860313600
          tz.transition 1997, 10, :o1, 877852800
          tz.transition 1998, 4, :o2, 891763200
          tz.transition 1998, 10, :o1, 909302400
          tz.transition 1999, 4, :o2, 923212800
          tz.transition 1999, 10, :o1, 941356800
          tz.transition 2000, 4, :o2, 954662400
          tz.transition 2000, 10, :o1, 972806400
          tz.transition 2001, 4, :o2, 986112000
          tz.transition 2001, 10, :o1, 1004256000
          tz.transition 2002, 4, :o2, 1018166400
          tz.transition 2002, 10, :o1, 1035705600
          tz.transition 2003, 4, :o2, 1049616000
          tz.transition 2003, 10, :o1, 1067155200
          tz.transition 2004, 4, :o2, 1081065600
          tz.transition 2004, 10, :o1, 1099209600
          tz.transition 2005, 4, :o2, 1112515200
          tz.transition 2005, 10, :o1, 1130659200
          tz.transition 2006, 4, :o2, 1143964800
          tz.transition 2006, 10, :o1, 1162105200
          tz.transition 2007, 3, :o2, 1173600000
          tz.transition 2007, 11, :o1, 1194159600
          tz.transition 2008, 3, :o2, 1205049600
          tz.transition 2008, 11, :o1, 1225609200
          tz.transition 2009, 3, :o2, 1236499200
          tz.transition 2009, 11, :o1, 1257058800
          tz.transition 2010, 3, :o2, 1268553600
          tz.transition 2010, 11, :o1, 1289113200
          tz.transition 2011, 3, :o2, 1300003200
          tz.transition 2011, 11, :o1, 1320562800
          tz.transition 2012, 3, :o2, 1331452800
          tz.transition 2012, 11, :o1, 1352012400
          tz.transition 2013, 3, :o2, 1362902400
          tz.transition 2013, 11, :o1, 1383462000
          tz.transition 2014, 3, :o2, 1394352000
          tz.transition 2014, 11, :o1, 1414911600
          tz.transition 2015, 3, :o2, 1425801600
          tz.transition 2015, 11, :o1, 1446361200
          tz.transition 2016, 3, :o2, 1457856000
          tz.transition 2016, 11, :o1, 1478415600
          tz.transition 2017, 3, :o2, 1489305600
          tz.transition 2017, 11, :o1, 1509865200
          tz.transition 2018, 3, :o2, 1520755200
          tz.transition 2018, 11, :o1, 1541314800
          tz.transition 2019, 3, :o2, 1552204800
          tz.transition 2019, 11, :o1, 1572764400
          tz.transition 2020, 3, :o2, 1583654400
          tz.transition 2020, 11, :o1, 1604214000
          tz.transition 2021, 3, :o2, 1615708800
          tz.transition 2021, 11, :o1, 1636268400
          tz.transition 2022, 3, :o2, 1647158400
          tz.transition 2022, 11, :o1, 1667718000
          tz.transition 2023, 3, :o2, 1678608000
          tz.transition 2023, 11, :o1, 1699167600
          tz.transition 2024, 3, :o2, 1710057600
          tz.transition 2024, 11, :o1, 1730617200
          tz.transition 2025, 3, :o2, 1741507200
          tz.transition 2025, 11, :o1, 1762066800
          tz.transition 2026, 3, :o2, 1772956800
          tz.transition 2026, 11, :o5, 1793516400
        end
      end
    end
  end
end
