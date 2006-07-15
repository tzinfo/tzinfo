require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Atlantic
      module Bermuda
        include TimezoneDefinition
        
        timezone 'Atlantic/Bermuda' do |tz|
          tz.offset :o0, -15544, 0, :LMT
          tz.offset :o1, -14400, 0, :AST
          tz.offset :o2, -14400, 3600, :ADT
          
          tz.transition 1930, 1, :o1, 26200559843, 10800
          tz.transition 1974, 4, :o2, 136360800
          tz.transition 1974, 10, :o1, 152082000
          tz.transition 1975, 4, :o2, 167810400
          tz.transition 1975, 10, :o1, 183531600
          tz.transition 1976, 4, :o2, 199260000
          tz.transition 1976, 10, :o1, 215586000
          tz.transition 1977, 4, :o2, 230709600
          tz.transition 1977, 10, :o1, 247035600
          tz.transition 1978, 4, :o2, 262764000
          tz.transition 1978, 10, :o1, 278485200
          tz.transition 1979, 4, :o2, 294213600
          tz.transition 1979, 10, :o1, 309934800
          tz.transition 1980, 4, :o2, 325663200
          tz.transition 1980, 10, :o1, 341384400
          tz.transition 1981, 4, :o2, 357112800
          tz.transition 1981, 10, :o1, 372834000
          tz.transition 1982, 4, :o2, 388562400
          tz.transition 1982, 10, :o1, 404888400
          tz.transition 1983, 4, :o2, 420012000
          tz.transition 1983, 10, :o1, 436338000
          tz.transition 1984, 4, :o2, 452066400
          tz.transition 1984, 10, :o1, 467787600
          tz.transition 1985, 4, :o2, 483516000
          tz.transition 1985, 10, :o1, 499237200
          tz.transition 1986, 4, :o2, 514965600
          tz.transition 1986, 10, :o1, 530686800
          tz.transition 1987, 4, :o2, 544600800
          tz.transition 1987, 10, :o1, 562136400
          tz.transition 1988, 4, :o2, 576050400
          tz.transition 1988, 10, :o1, 594190800
          tz.transition 1989, 4, :o2, 607500000
          tz.transition 1989, 10, :o1, 625640400
          tz.transition 1990, 4, :o2, 638949600
          tz.transition 1990, 10, :o1, 657090000
          tz.transition 1991, 4, :o2, 671004000
          tz.transition 1991, 10, :o1, 688539600
          tz.transition 1992, 4, :o2, 702453600
          tz.transition 1992, 10, :o1, 719989200
          tz.transition 1993, 4, :o2, 733903200
          tz.transition 1993, 10, :o1, 752043600
          tz.transition 1994, 4, :o2, 765352800
          tz.transition 1994, 10, :o1, 783493200
          tz.transition 1995, 4, :o2, 796802400
          tz.transition 1995, 10, :o1, 814942800
          tz.transition 1996, 4, :o2, 828856800
          tz.transition 1996, 10, :o1, 846392400
          tz.transition 1997, 4, :o2, 860306400
          tz.transition 1997, 10, :o1, 877842000
          tz.transition 1998, 4, :o2, 891756000
          tz.transition 1998, 10, :o1, 909291600
          tz.transition 1999, 4, :o2, 923205600
          tz.transition 1999, 10, :o1, 941346000
          tz.transition 2000, 4, :o2, 954655200
          tz.transition 2000, 10, :o1, 972795600
          tz.transition 2001, 4, :o2, 986104800
          tz.transition 2001, 10, :o1, 1004245200
          tz.transition 2002, 4, :o2, 1018159200
          tz.transition 2002, 10, :o1, 1035694800
          tz.transition 2003, 4, :o2, 1049608800
          tz.transition 2003, 10, :o1, 1067144400
          tz.transition 2004, 4, :o2, 1081058400
          tz.transition 2004, 10, :o1, 1099198800
          tz.transition 2005, 4, :o2, 1112508000
          tz.transition 2005, 10, :o1, 1130648400
          tz.transition 2006, 4, :o2, 1143957600
          tz.transition 2006, 10, :o1, 1162098000
          tz.transition 2007, 4, :o2, 1175407200
          tz.transition 2007, 10, :o1, 1193547600
          tz.transition 2008, 4, :o2, 1207461600
          tz.transition 2008, 10, :o1, 1224997200
          tz.transition 2009, 4, :o2, 1238911200
          tz.transition 2009, 10, :o1, 1256446800
          tz.transition 2010, 4, :o2, 1270360800
          tz.transition 2010, 10, :o1, 1288501200
          tz.transition 2011, 4, :o2, 1301810400
          tz.transition 2011, 10, :o1, 1319950800
          tz.transition 2012, 4, :o2, 1333260000
          tz.transition 2012, 10, :o1, 1351400400
          tz.transition 2013, 4, :o2, 1365314400
          tz.transition 2013, 10, :o1, 1382850000
          tz.transition 2014, 4, :o2, 1396764000
          tz.transition 2014, 10, :o1, 1414299600
          tz.transition 2015, 4, :o2, 1428213600
          tz.transition 2015, 10, :o1, 1445749200
          tz.transition 2016, 4, :o2, 1459663200
          tz.transition 2016, 10, :o1, 1477803600
          tz.transition 2017, 4, :o2, 1491112800
          tz.transition 2017, 10, :o1, 1509253200
          tz.transition 2018, 4, :o2, 1522562400
          tz.transition 2018, 10, :o1, 1540702800
          tz.transition 2019, 4, :o2, 1554616800
          tz.transition 2019, 10, :o1, 1572152400
          tz.transition 2020, 4, :o2, 1586066400
          tz.transition 2020, 10, :o1, 1603602000
          tz.transition 2021, 4, :o2, 1617516000
          tz.transition 2021, 10, :o1, 1635656400
          tz.transition 2022, 4, :o2, 1648965600
          tz.transition 2022, 10, :o1, 1667106000
          tz.transition 2023, 4, :o2, 1680415200
          tz.transition 2023, 10, :o1, 1698555600
          tz.transition 2024, 4, :o2, 1712469600
          tz.transition 2024, 10, :o1, 1730005200
          tz.transition 2025, 4, :o2, 1743919200
          tz.transition 2025, 10, :o1, 1761454800
          tz.transition 2026, 4, :o2, 1775368800
          tz.transition 2026, 10, :o1, 1792904400
          tz.transition 2027, 4, :o2, 1806818400
          tz.transition 2027, 10, :o1, 1824958800
          tz.transition 2028, 4, :o2, 1838268000
          tz.transition 2028, 10, :o1, 1856408400
          tz.transition 2029, 4, :o2, 1869717600
          tz.transition 2029, 10, :o1, 1887858000
          tz.transition 2030, 4, :o2, 1901772000
          tz.transition 2030, 10, :o1, 1919307600
          tz.transition 2031, 4, :o2, 1933221600
          tz.transition 2031, 10, :o1, 1950757200
          tz.transition 2032, 4, :o2, 1964671200
          tz.transition 2032, 10, :o1, 1982811600
          tz.transition 2033, 4, :o2, 1996120800
          tz.transition 2033, 10, :o1, 2014261200
          tz.transition 2034, 4, :o2, 2027570400
          tz.transition 2034, 10, :o1, 2045710800
          tz.transition 2035, 4, :o2, 2059020000
          tz.transition 2035, 10, :o1, 2077160400
          tz.transition 2036, 4, :o2, 2091074400
          tz.transition 2036, 10, :o1, 2108610000
          tz.transition 2037, 4, :o2, 2122524000
          tz.transition 2037, 10, :o1, 2140059600
          tz.transition 2038, 4, :o2, 9862071, 4
          tz.transition 2038, 10, :o1, 59177465, 24
          tz.transition 2039, 4, :o2, 9863527, 4
          tz.transition 2039, 10, :o1, 59186201, 24
          tz.transition 2040, 4, :o2, 9864983, 4
          tz.transition 2040, 10, :o1, 59194937, 24
          tz.transition 2041, 4, :o2, 9866467, 4
          tz.transition 2041, 10, :o1, 59203673, 24
          tz.transition 2042, 4, :o2, 9867923, 4
          tz.transition 2042, 10, :o1, 59212409, 24
          tz.transition 2043, 4, :o2, 9869379, 4
          tz.transition 2043, 10, :o1, 59221145, 24
          tz.transition 2044, 4, :o2, 9870835, 4
          tz.transition 2044, 10, :o1, 59230049, 24
          tz.transition 2045, 4, :o2, 9872291, 4
          tz.transition 2045, 10, :o1, 59238785, 24
          tz.transition 2046, 4, :o2, 9873747, 4
          tz.transition 2046, 10, :o1, 59247521, 24
          tz.transition 2047, 4, :o2, 9875231, 4
          tz.transition 2047, 10, :o1, 59256257, 24
          tz.transition 2048, 4, :o2, 9876687, 4
          tz.transition 2048, 10, :o1, 59264993, 24
          tz.transition 2049, 4, :o2, 9878143, 4
          tz.transition 2049, 10, :o1, 59273897, 24
          tz.transition 2050, 4, :o2, 9879599, 4
          tz.transition 2050, 10, :o1, 59282633, 24
        end
      end
    end
  end
end
