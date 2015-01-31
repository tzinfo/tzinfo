module TZInfo
  module Definitions
    module Pacific
      module Easter
        include TimezoneDefinition
        
        timezone 'Pacific/Easter' do |tz|
          tz.offset :o0, -26264, 0, :LMT
          tz.offset :o1, -26248, 0, :EMT
          tz.offset :o2, -25200, 3600, :EASST
          tz.offset :o3, -25200, 0, :EAST
          tz.offset :o4, -21600, 3600, :EASST
          tz.offset :o5, -21600, 0, :EAST
          tz.offset :o6, -18000, 0, :EAST
          
          tz.transition 1890, 1, :o1, 26042783083, 10800
          tz.transition 1932, 9, :o2, 26211079481, 10800
          tz.transition 1942, 6, :o3, 7291535, 3
          tz.transition 1942, 8, :o2, 58333745, 24
          tz.transition 1946, 9, :o3, 19456517, 8
          tz.transition 1968, 11, :o2, 7320491, 3
          tz.transition 1969, 3, :o3, 19522485, 8
          tz.transition 1969, 11, :o2, 7321646, 3
          tz.transition 1970, 3, :o3, 7527600
          tz.transition 1970, 10, :o2, 24465600
          tz.transition 1971, 3, :o3, 37767600
          tz.transition 1971, 10, :o2, 55915200
          tz.transition 1972, 3, :o3, 69217200
          tz.transition 1972, 10, :o2, 87969600
          tz.transition 1973, 3, :o3, 100666800
          tz.transition 1973, 9, :o2, 118209600
          tz.transition 1974, 3, :o3, 132116400
          tz.transition 1974, 10, :o2, 150868800
          tz.transition 1975, 3, :o3, 163566000
          tz.transition 1975, 10, :o2, 182318400
          tz.transition 1976, 3, :o3, 195620400
          tz.transition 1976, 10, :o2, 213768000
          tz.transition 1977, 3, :o3, 227070000
          tz.transition 1977, 10, :o2, 245217600
          tz.transition 1978, 3, :o3, 258519600
          tz.transition 1978, 10, :o2, 277272000
          tz.transition 1979, 3, :o3, 289969200
          tz.transition 1979, 10, :o2, 308721600
          tz.transition 1980, 3, :o3, 321418800
          tz.transition 1980, 10, :o2, 340171200
          tz.transition 1981, 3, :o3, 353473200
          tz.transition 1981, 10, :o2, 371620800
          tz.transition 1982, 3, :o4, 384836400
          tz.transition 1982, 3, :o5, 384922800
          tz.transition 1982, 10, :o4, 403070400
          tz.transition 1983, 3, :o5, 416372400
          tz.transition 1983, 10, :o4, 434520000
          tz.transition 1984, 3, :o5, 447822000
          tz.transition 1984, 10, :o4, 466574400
          tz.transition 1985, 3, :o5, 479271600
          tz.transition 1985, 10, :o4, 498024000
          tz.transition 1986, 3, :o5, 510721200
          tz.transition 1986, 10, :o4, 529473600
          tz.transition 1987, 4, :o5, 545194800
          tz.transition 1987, 10, :o4, 560923200
          tz.transition 1988, 3, :o5, 574225200
          tz.transition 1988, 10, :o4, 591768000
          tz.transition 1989, 3, :o5, 605674800
          tz.transition 1989, 10, :o4, 624427200
          tz.transition 1990, 3, :o5, 637729200
          tz.transition 1990, 9, :o4, 653457600
          tz.transition 1991, 3, :o5, 668574000
          tz.transition 1991, 10, :o4, 687326400
          tz.transition 1992, 3, :o5, 700628400
          tz.transition 1992, 10, :o4, 718776000
          tz.transition 1993, 3, :o5, 732078000
          tz.transition 1993, 10, :o4, 750225600
          tz.transition 1994, 3, :o5, 763527600
          tz.transition 1994, 10, :o4, 781675200
          tz.transition 1995, 3, :o5, 794977200
          tz.transition 1995, 10, :o4, 813729600
          tz.transition 1996, 3, :o5, 826426800
          tz.transition 1996, 10, :o4, 845179200
          tz.transition 1997, 3, :o5, 859690800
          tz.transition 1997, 10, :o4, 876628800
          tz.transition 1998, 3, :o5, 889930800
          tz.transition 1998, 9, :o4, 906868800
          tz.transition 1999, 4, :o5, 923194800
          tz.transition 1999, 10, :o4, 939528000
          tz.transition 2000, 3, :o5, 952830000
          tz.transition 2000, 10, :o4, 971582400
          tz.transition 2001, 3, :o5, 984279600
          tz.transition 2001, 10, :o4, 1003032000
          tz.transition 2002, 3, :o5, 1015729200
          tz.transition 2002, 10, :o4, 1034481600
          tz.transition 2003, 3, :o5, 1047178800
          tz.transition 2003, 10, :o4, 1065931200
          tz.transition 2004, 3, :o5, 1079233200
          tz.transition 2004, 10, :o4, 1097380800
          tz.transition 2005, 3, :o5, 1110682800
          tz.transition 2005, 10, :o4, 1128830400
          tz.transition 2006, 3, :o5, 1142132400
          tz.transition 2006, 10, :o4, 1160884800
          tz.transition 2007, 3, :o5, 1173582000
          tz.transition 2007, 10, :o4, 1192334400
          tz.transition 2008, 3, :o5, 1206846000
          tz.transition 2008, 10, :o4, 1223784000
          tz.transition 2009, 3, :o5, 1237086000
          tz.transition 2009, 10, :o4, 1255233600
          tz.transition 2010, 4, :o5, 1270350000
          tz.transition 2010, 10, :o4, 1286683200
          tz.transition 2011, 5, :o5, 1304823600
          tz.transition 2011, 8, :o4, 1313899200
          tz.transition 2012, 4, :o5, 1335668400
          tz.transition 2012, 9, :o4, 1346558400
          tz.transition 2013, 4, :o5, 1367118000
          tz.transition 2013, 9, :o4, 1378612800
          tz.transition 2014, 4, :o5, 1398567600
          tz.transition 2014, 9, :o4, 1410062400
          tz.transition 2015, 4, :o6, 1430017200
        end
      end
    end
  end
end
