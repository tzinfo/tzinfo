# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Easter
        include TimezoneDefinition
        
        timezone 'Pacific/Easter' do |tz|
          tz.offset :o0, -26248, 0, :LMT
          tz.offset :o1, -26248, 0, :EMT
          tz.offset :o2, -25200, 0, :'-07'
          tz.offset :o3, -25200, 3600, :'-06'
          tz.offset :o4, -21600, 0, :'-06'
          tz.offset :o5, -21600, 3600, :'-05'
          
          tz.transition 1890, 1, :o1, 26042783081, 10800
          tz.transition 1932, 9, :o2, 26211079481, 10800
          tz.transition 1968, 11, :o3, 7320491, 3
          tz.transition 1969, 3, :o2, 19522485, 8
          tz.transition 1969, 11, :o3, 7321646, 3
          tz.transition 1970, 3, :o2, 7527600
          tz.transition 1970, 10, :o3, 24465600
          tz.transition 1971, 3, :o2, 37767600
          tz.transition 1971, 10, :o3, 55915200
          tz.transition 1972, 3, :o2, 69217200
          tz.transition 1972, 10, :o3, 87969600
          tz.transition 1973, 3, :o2, 100666800
          tz.transition 1973, 9, :o3, 118209600
          tz.transition 1974, 3, :o2, 132116400
          tz.transition 1974, 10, :o3, 150868800
          tz.transition 1975, 3, :o2, 163566000
          tz.transition 1975, 10, :o3, 182318400
          tz.transition 1976, 3, :o2, 195620400
          tz.transition 1976, 10, :o3, 213768000
          tz.transition 1977, 3, :o2, 227070000
          tz.transition 1977, 10, :o3, 245217600
          tz.transition 1978, 3, :o2, 258519600
          tz.transition 1978, 10, :o3, 277272000
          tz.transition 1979, 3, :o2, 289969200
          tz.transition 1979, 10, :o3, 308721600
          tz.transition 1980, 3, :o2, 321418800
          tz.transition 1980, 10, :o3, 340171200
          tz.transition 1981, 3, :o2, 353473200
          tz.transition 1981, 10, :o3, 371620800
          tz.transition 1982, 3, :o4, 384922800
          tz.transition 1982, 10, :o5, 403070400
          tz.transition 1983, 3, :o4, 416372400
          tz.transition 1983, 10, :o5, 434520000
          tz.transition 1984, 3, :o4, 447822000
          tz.transition 1984, 10, :o5, 466574400
          tz.transition 1985, 3, :o4, 479271600
          tz.transition 1985, 10, :o5, 498024000
          tz.transition 1986, 3, :o4, 510721200
          tz.transition 1986, 10, :o5, 529473600
          tz.transition 1987, 4, :o4, 545194800
          tz.transition 1987, 10, :o5, 560923200
          tz.transition 1988, 3, :o4, 574225200
          tz.transition 1988, 10, :o5, 592372800
          tz.transition 1989, 3, :o4, 605674800
          tz.transition 1989, 10, :o5, 624427200
          tz.transition 1990, 3, :o4, 637124400
          tz.transition 1990, 9, :o5, 653457600
          tz.transition 1991, 3, :o4, 668574000
          tz.transition 1991, 10, :o5, 687326400
          tz.transition 1992, 3, :o4, 700628400
          tz.transition 1992, 10, :o5, 718776000
          tz.transition 1993, 3, :o4, 732078000
          tz.transition 1993, 10, :o5, 750225600
          tz.transition 1994, 3, :o4, 763527600
          tz.transition 1994, 10, :o5, 781675200
          tz.transition 1995, 3, :o4, 794977200
          tz.transition 1995, 10, :o5, 813729600
          tz.transition 1996, 3, :o4, 826426800
          tz.transition 1996, 10, :o5, 845179200
          tz.transition 1997, 3, :o4, 859690800
          tz.transition 1997, 10, :o5, 876628800
          tz.transition 1998, 3, :o4, 889930800
          tz.transition 1998, 9, :o5, 906868800
          tz.transition 1999, 4, :o4, 923194800
          tz.transition 1999, 10, :o5, 939528000
          tz.transition 2000, 3, :o4, 952830000
          tz.transition 2000, 10, :o5, 971582400
          tz.transition 2001, 3, :o4, 984279600
          tz.transition 2001, 10, :o5, 1003032000
          tz.transition 2002, 3, :o4, 1015729200
          tz.transition 2002, 10, :o5, 1034481600
          tz.transition 2003, 3, :o4, 1047178800
          tz.transition 2003, 10, :o5, 1065931200
          tz.transition 2004, 3, :o4, 1079233200
          tz.transition 2004, 10, :o5, 1097380800
          tz.transition 2005, 3, :o4, 1110682800
          tz.transition 2005, 10, :o5, 1128830400
          tz.transition 2006, 3, :o4, 1142132400
          tz.transition 2006, 10, :o5, 1160884800
          tz.transition 2007, 3, :o4, 1173582000
          tz.transition 2007, 10, :o5, 1192334400
          tz.transition 2008, 3, :o4, 1206846000
          tz.transition 2008, 10, :o5, 1223784000
          tz.transition 2009, 3, :o4, 1237086000
          tz.transition 2009, 10, :o5, 1255233600
          tz.transition 2010, 4, :o4, 1270350000
          tz.transition 2010, 10, :o5, 1286683200
          tz.transition 2011, 5, :o4, 1304823600
          tz.transition 2011, 8, :o5, 1313899200
          tz.transition 2012, 4, :o4, 1335668400
          tz.transition 2012, 9, :o5, 1346558400
          tz.transition 2013, 4, :o4, 1367118000
          tz.transition 2013, 9, :o5, 1378612800
          tz.transition 2014, 4, :o4, 1398567600
          tz.transition 2014, 9, :o5, 1410062400
          tz.transition 2016, 5, :o4, 1463281200
          tz.transition 2016, 8, :o5, 1471147200
          tz.transition 2017, 5, :o4, 1494730800
          tz.transition 2017, 8, :o5, 1502596800
          tz.transition 2018, 5, :o4, 1526180400
          tz.transition 2018, 8, :o5, 1534046400
          tz.transition 2019, 4, :o4, 1554606000
          tz.transition 2019, 9, :o5, 1567915200
          tz.transition 2020, 4, :o4, 1586055600
          tz.transition 2020, 9, :o5, 1599364800
          tz.transition 2021, 4, :o4, 1617505200
          tz.transition 2021, 9, :o5, 1630814400
          tz.transition 2022, 4, :o4, 1648954800
          tz.transition 2022, 9, :o5, 1662264000
          tz.transition 2023, 4, :o4, 1680404400
          tz.transition 2023, 9, :o5, 1693713600
          tz.transition 2024, 4, :o4, 1712458800
          tz.transition 2024, 9, :o5, 1725768000
          tz.transition 2025, 4, :o4, 1743908400
          tz.transition 2025, 9, :o5, 1757217600
          tz.transition 2026, 4, :o4, 1775358000
          tz.transition 2026, 9, :o5, 1788667200
          tz.transition 2027, 4, :o4, 1806807600
          tz.transition 2027, 9, :o5, 1820116800
          tz.transition 2028, 4, :o4, 1838257200
          tz.transition 2028, 9, :o5, 1851566400
          tz.transition 2029, 4, :o4, 1870311600
          tz.transition 2029, 9, :o5, 1883016000
          tz.transition 2030, 4, :o4, 1901761200
          tz.transition 2030, 9, :o5, 1915070400
          tz.transition 2031, 4, :o4, 1933210800
          tz.transition 2031, 9, :o5, 1946520000
          tz.transition 2032, 4, :o4, 1964660400
          tz.transition 2032, 9, :o5, 1977969600
          tz.transition 2033, 4, :o4, 1996110000
          tz.transition 2033, 9, :o5, 2009419200
          tz.transition 2034, 4, :o4, 2027559600
          tz.transition 2034, 9, :o5, 2040868800
          tz.transition 2035, 4, :o4, 2059614000
          tz.transition 2035, 9, :o5, 2072318400
          tz.transition 2036, 4, :o4, 2091063600
          tz.transition 2036, 9, :o5, 2104372800
          tz.transition 2037, 4, :o4, 2122513200
          tz.transition 2037, 9, :o5, 2135822400
          tz.transition 2038, 4, :o4, 19724141, 8
          tz.transition 2038, 9, :o5, 7397015, 3
          tz.transition 2039, 4, :o4, 19727053, 8
          tz.transition 2039, 9, :o5, 7398107, 3
          tz.transition 2040, 4, :o4, 19730021, 8
          tz.transition 2040, 9, :o5, 7399199, 3
          tz.transition 2041, 4, :o4, 19732933, 8
          tz.transition 2041, 9, :o5, 7400312, 3
          tz.transition 2042, 4, :o4, 19735845, 8
          tz.transition 2042, 9, :o5, 7401404, 3
          tz.transition 2043, 4, :o4, 19738757, 8
          tz.transition 2043, 9, :o5, 7402496, 3
          tz.transition 2044, 4, :o4, 19741669, 8
          tz.transition 2044, 9, :o5, 7403588, 3
          tz.transition 2045, 4, :o4, 19744581, 8
          tz.transition 2045, 9, :o5, 7404680, 3
          tz.transition 2046, 4, :o4, 19747549, 8
          tz.transition 2046, 9, :o5, 7405772, 3
          tz.transition 2047, 4, :o4, 19750461, 8
          tz.transition 2047, 9, :o5, 7406885, 3
          tz.transition 2048, 4, :o4, 19753373, 8
          tz.transition 2048, 9, :o5, 7407977, 3
          tz.transition 2049, 4, :o4, 19756285, 8
          tz.transition 2049, 9, :o5, 7409069, 3
          tz.transition 2050, 4, :o4, 19759197, 8
        end
      end
    end
  end
end
