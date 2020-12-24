# encoding: UTF-8

module TZInfo
  module Definitions
    module Atlantic
      module Bermuda
        include TimezoneDefinition
        
        timezone 'Atlantic/Bermuda' do |tz|
          tz.offset :o0, -15558, 0, :LMT
          tz.offset :o1, -15558, 0, :BMT
          tz.offset :o2, -15558, 3600, :BST
          tz.offset :o3, -14400, 0, :AST
          tz.offset :o4, -14400, 3600, :ADT
          
          tz.transition 1890, 1, :o1, 34723708993, 14400
          tz.transition 1917, 4, :o2, 34867075393, 14400
          tz.transition 1917, 10, :o1, 34869637993, 14400
          tz.transition 1918, 4, :o2, 34872446593, 14400
          tz.transition 1918, 9, :o1, 34874677993, 14400
          tz.transition 1930, 1, :o3, 34934079793, 14400
          tz.transition 1942, 1, :o4, 9721483, 4
          tz.transition 1942, 10, :o3, 58335617, 24
          tz.transition 1943, 3, :o4, 9723219, 4
          tz.transition 1943, 10, :o3, 58344689, 24
          tz.transition 1944, 3, :o4, 9724647, 4
          tz.transition 1944, 11, :o3, 58353593, 24
          tz.transition 1945, 3, :o4, 9726103, 4
          tz.transition 1945, 11, :o3, 58362329, 24
          tz.transition 1947, 5, :o4, 9729295, 4
          tz.transition 1947, 9, :o3, 58378625, 24
          tz.transition 1948, 5, :o4, 9730779, 4
          tz.transition 1948, 9, :o3, 58387193, 24
          tz.transition 1949, 5, :o4, 9732235, 4
          tz.transition 1949, 9, :o3, 58395929, 24
          tz.transition 1950, 5, :o4, 9733719, 4
          tz.transition 1950, 9, :o3, 58404665, 24
          tz.transition 1951, 5, :o4, 9735175, 4
          tz.transition 1951, 9, :o3, 58413401, 24
          tz.transition 1952, 5, :o4, 9736631, 4
          tz.transition 1952, 9, :o3, 58422305, 24
          tz.transition 1956, 5, :o4, 9742483, 4
          tz.transition 1956, 10, :o3, 58458593, 24
          tz.transition 1974, 4, :o4, 136360800
          tz.transition 1974, 10, :o3, 152082000
          tz.transition 1975, 4, :o4, 167810400
          tz.transition 1975, 10, :o3, 183531600
          tz.transition 1976, 4, :o4, 199260000
          tz.transition 1976, 10, :o3, 215586000
          tz.transition 1977, 4, :o4, 230709600
          tz.transition 1977, 10, :o3, 247035600
          tz.transition 1978, 4, :o4, 262764000
          tz.transition 1978, 10, :o3, 278485200
          tz.transition 1979, 4, :o4, 294213600
          tz.transition 1979, 10, :o3, 309934800
          tz.transition 1980, 4, :o4, 325663200
          tz.transition 1980, 10, :o3, 341384400
          tz.transition 1981, 4, :o4, 357112800
          tz.transition 1981, 10, :o3, 372834000
          tz.transition 1982, 4, :o4, 388562400
          tz.transition 1982, 10, :o3, 404888400
          tz.transition 1983, 4, :o4, 420012000
          tz.transition 1983, 10, :o3, 436338000
          tz.transition 1984, 4, :o4, 452066400
          tz.transition 1984, 10, :o3, 467787600
          tz.transition 1985, 4, :o4, 483516000
          tz.transition 1985, 10, :o3, 499237200
          tz.transition 1986, 4, :o4, 514965600
          tz.transition 1986, 10, :o3, 530686800
          tz.transition 1987, 4, :o4, 544600800
          tz.transition 1987, 10, :o3, 562136400
          tz.transition 1988, 4, :o4, 576050400
          tz.transition 1988, 10, :o3, 594190800
          tz.transition 1989, 4, :o4, 607500000
          tz.transition 1989, 10, :o3, 625640400
          tz.transition 1990, 4, :o4, 638949600
          tz.transition 1990, 10, :o3, 657090000
          tz.transition 1991, 4, :o4, 671004000
          tz.transition 1991, 10, :o3, 688539600
          tz.transition 1992, 4, :o4, 702453600
          tz.transition 1992, 10, :o3, 719989200
          tz.transition 1993, 4, :o4, 733903200
          tz.transition 1993, 10, :o3, 752043600
          tz.transition 1994, 4, :o4, 765352800
          tz.transition 1994, 10, :o3, 783493200
          tz.transition 1995, 4, :o4, 796802400
          tz.transition 1995, 10, :o3, 814942800
          tz.transition 1996, 4, :o4, 828856800
          tz.transition 1996, 10, :o3, 846392400
          tz.transition 1997, 4, :o4, 860306400
          tz.transition 1997, 10, :o3, 877842000
          tz.transition 1998, 4, :o4, 891756000
          tz.transition 1998, 10, :o3, 909291600
          tz.transition 1999, 4, :o4, 923205600
          tz.transition 1999, 10, :o3, 941346000
          tz.transition 2000, 4, :o4, 954655200
          tz.transition 2000, 10, :o3, 972795600
          tz.transition 2001, 4, :o4, 986104800
          tz.transition 2001, 10, :o3, 1004245200
          tz.transition 2002, 4, :o4, 1018159200
          tz.transition 2002, 10, :o3, 1035694800
          tz.transition 2003, 4, :o4, 1049608800
          tz.transition 2003, 10, :o3, 1067144400
          tz.transition 2004, 4, :o4, 1081058400
          tz.transition 2004, 10, :o3, 1099198800
          tz.transition 2005, 4, :o4, 1112508000
          tz.transition 2005, 10, :o3, 1130648400
          tz.transition 2006, 4, :o4, 1143957600
          tz.transition 2006, 10, :o3, 1162098000
          tz.transition 2007, 3, :o4, 1173592800
          tz.transition 2007, 11, :o3, 1194152400
          tz.transition 2008, 3, :o4, 1205042400
          tz.transition 2008, 11, :o3, 1225602000
          tz.transition 2009, 3, :o4, 1236492000
          tz.transition 2009, 11, :o3, 1257051600
          tz.transition 2010, 3, :o4, 1268546400
          tz.transition 2010, 11, :o3, 1289106000
          tz.transition 2011, 3, :o4, 1299996000
          tz.transition 2011, 11, :o3, 1320555600
          tz.transition 2012, 3, :o4, 1331445600
          tz.transition 2012, 11, :o3, 1352005200
          tz.transition 2013, 3, :o4, 1362895200
          tz.transition 2013, 11, :o3, 1383454800
          tz.transition 2014, 3, :o4, 1394344800
          tz.transition 2014, 11, :o3, 1414904400
          tz.transition 2015, 3, :o4, 1425794400
          tz.transition 2015, 11, :o3, 1446354000
          tz.transition 2016, 3, :o4, 1457848800
          tz.transition 2016, 11, :o3, 1478408400
          tz.transition 2017, 3, :o4, 1489298400
          tz.transition 2017, 11, :o3, 1509858000
          tz.transition 2018, 3, :o4, 1520748000
          tz.transition 2018, 11, :o3, 1541307600
          tz.transition 2019, 3, :o4, 1552197600
          tz.transition 2019, 11, :o3, 1572757200
          tz.transition 2020, 3, :o4, 1583647200
          tz.transition 2020, 11, :o3, 1604206800
          tz.transition 2021, 3, :o4, 1615701600
          tz.transition 2021, 11, :o3, 1636261200
          tz.transition 2022, 3, :o4, 1647151200
          tz.transition 2022, 11, :o3, 1667710800
          tz.transition 2023, 3, :o4, 1678600800
          tz.transition 2023, 11, :o3, 1699160400
          tz.transition 2024, 3, :o4, 1710050400
          tz.transition 2024, 11, :o3, 1730610000
          tz.transition 2025, 3, :o4, 1741500000
          tz.transition 2025, 11, :o3, 1762059600
          tz.transition 2026, 3, :o4, 1772949600
          tz.transition 2026, 11, :o3, 1793509200
          tz.transition 2027, 3, :o4, 1805004000
          tz.transition 2027, 11, :o3, 1825563600
          tz.transition 2028, 3, :o4, 1836453600
          tz.transition 2028, 11, :o3, 1857013200
          tz.transition 2029, 3, :o4, 1867903200
          tz.transition 2029, 11, :o3, 1888462800
          tz.transition 2030, 3, :o4, 1899352800
          tz.transition 2030, 11, :o3, 1919912400
          tz.transition 2031, 3, :o4, 1930802400
          tz.transition 2031, 11, :o3, 1951362000
          tz.transition 2032, 3, :o4, 1962856800
          tz.transition 2032, 11, :o3, 1983416400
          tz.transition 2033, 3, :o4, 1994306400
          tz.transition 2033, 11, :o3, 2014866000
          tz.transition 2034, 3, :o4, 2025756000
          tz.transition 2034, 11, :o3, 2046315600
          tz.transition 2035, 3, :o4, 2057205600
          tz.transition 2035, 11, :o3, 2077765200
          tz.transition 2036, 3, :o4, 2088655200
          tz.transition 2036, 11, :o3, 2109214800
          tz.transition 2037, 3, :o4, 2120104800
          tz.transition 2037, 11, :o3, 2140664400
          tz.transition 2038, 3, :o4, 9861987, 4
          tz.transition 2038, 11, :o3, 59177633, 24
          tz.transition 2039, 3, :o4, 9863443, 4
          tz.transition 2039, 11, :o3, 59186369, 24
          tz.transition 2040, 3, :o4, 9864899, 4
          tz.transition 2040, 11, :o3, 59195105, 24
          tz.transition 2041, 3, :o4, 9866355, 4
          tz.transition 2041, 11, :o3, 59203841, 24
          tz.transition 2042, 3, :o4, 9867811, 4
          tz.transition 2042, 11, :o3, 59212577, 24
          tz.transition 2043, 3, :o4, 9869267, 4
          tz.transition 2043, 11, :o3, 59221313, 24
          tz.transition 2044, 3, :o4, 9870751, 4
          tz.transition 2044, 11, :o3, 59230217, 24
          tz.transition 2045, 3, :o4, 9872207, 4
          tz.transition 2045, 11, :o3, 59238953, 24
          tz.transition 2046, 3, :o4, 9873663, 4
          tz.transition 2046, 11, :o3, 59247689, 24
          tz.transition 2047, 3, :o4, 9875119, 4
          tz.transition 2047, 11, :o3, 59256425, 24
          tz.transition 2048, 3, :o4, 9876575, 4
          tz.transition 2048, 11, :o3, 59265161, 24
          tz.transition 2049, 3, :o4, 9878059, 4
          tz.transition 2049, 11, :o3, 59274065, 24
          tz.transition 2050, 3, :o4, 9879515, 4
          tz.transition 2050, 11, :o3, 59282801, 24
        end
      end
    end
  end
end
