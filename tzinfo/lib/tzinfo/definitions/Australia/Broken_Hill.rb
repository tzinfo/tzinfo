require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Australia
      module Broken_Hill
        include TimezoneDefinition
        
        timezone 'Australia/Broken_Hill' do |tz|
          tz.offset :o0, 33948, 0, :LMT
          tz.offset :o1, 36000, 0, :EST
          tz.offset :o2, 32400, 0, :CST
          tz.offset :o3, 34200, 0, :CST
          tz.offset :o4, 34200, 3600, :CST
          
          tz.transition 1895, 1, :o1, 5791740257, 2400
          tz.transition 1896, 8, :o2, 28965529, 12
          tz.transition 1899, 4, :o3, 19318201, 8
          tz.transition 1916, 12, :o4, 3486569911, 1440
          tz.transition 1917, 3, :o3, 116222983, 48
          tz.transition 1941, 12, :o4, 38885763, 16
          tz.transition 1942, 3, :o3, 116661463, 48
          tz.transition 1942, 9, :o4, 38890067, 16
          tz.transition 1943, 3, :o3, 116678935, 48
          tz.transition 1943, 10, :o4, 38896003, 16
          tz.transition 1944, 3, :o3, 116696407, 48
          tz.transition 1971, 10, :o4, 57688200
          tz.transition 1972, 2, :o3, 67969800
          tz.transition 1972, 10, :o4, 89137800
          tz.transition 1973, 3, :o3, 100024200
          tz.transition 1973, 10, :o4, 120587400
          tz.transition 1974, 3, :o3, 131473800
          tz.transition 1974, 10, :o4, 152037000
          tz.transition 1975, 3, :o3, 162923400
          tz.transition 1975, 10, :o4, 183486600
          tz.transition 1976, 3, :o3, 194977800
          tz.transition 1976, 10, :o4, 215541000
          tz.transition 1977, 3, :o3, 226427400
          tz.transition 1977, 10, :o4, 246990600
          tz.transition 1978, 3, :o3, 257877000
          tz.transition 1978, 10, :o4, 278440200
          tz.transition 1979, 3, :o3, 289326600
          tz.transition 1979, 10, :o4, 309889800
          tz.transition 1980, 3, :o3, 320776200
          tz.transition 1980, 10, :o4, 341339400
          tz.transition 1981, 2, :o3, 352225800
          tz.transition 1981, 10, :o4, 372789000
          tz.transition 1982, 4, :o3, 386699400
          tz.transition 1982, 10, :o4, 404843400
          tz.transition 1983, 3, :o3, 415729800
          tz.transition 1983, 10, :o4, 436293000
          tz.transition 1984, 3, :o3, 447179400
          tz.transition 1984, 10, :o4, 467742600
          tz.transition 1985, 3, :o3, 478629000
          tz.transition 1985, 10, :o4, 499192200
          tz.transition 1986, 3, :o3, 511288200
          tz.transition 1986, 10, :o4, 530037000
          tz.transition 1987, 3, :o3, 542737800
          tz.transition 1987, 10, :o4, 562091400
          tz.transition 1988, 3, :o3, 574792200
          tz.transition 1988, 10, :o4, 594145800
          tz.transition 1989, 3, :o3, 606241800
          tz.transition 1989, 10, :o4, 625595400
          tz.transition 1990, 3, :o3, 636481800
          tz.transition 1990, 10, :o4, 657045000
          tz.transition 1991, 3, :o3, 667931400
          tz.transition 1991, 10, :o4, 688494600
          tz.transition 1992, 2, :o3, 699381000
          tz.transition 1992, 10, :o4, 719944200
          tz.transition 1993, 3, :o3, 731435400
          tz.transition 1993, 10, :o4, 751998600
          tz.transition 1994, 3, :o3, 762885000
          tz.transition 1994, 10, :o4, 783448200
          tz.transition 1995, 3, :o3, 794334600
          tz.transition 1995, 10, :o4, 814897800
          tz.transition 1996, 3, :o3, 828203400
          tz.transition 1996, 10, :o4, 846347400
          tz.transition 1997, 3, :o3, 859653000
          tz.transition 1997, 10, :o4, 877797000
          tz.transition 1998, 3, :o3, 891102600
          tz.transition 1998, 10, :o4, 909246600
          tz.transition 1999, 3, :o3, 922552200
          tz.transition 1999, 10, :o4, 941301000
          tz.transition 2000, 3, :o3, 954001800
          tz.transition 2000, 10, :o4, 972750600
          tz.transition 2001, 3, :o3, 985451400
          tz.transition 2001, 10, :o4, 1004200200
          tz.transition 2002, 3, :o3, 1017505800
          tz.transition 2002, 10, :o4, 1035649800
          tz.transition 2003, 3, :o3, 1048955400
          tz.transition 2003, 10, :o4, 1067099400
          tz.transition 2004, 3, :o3, 1080405000
          tz.transition 2004, 10, :o4, 1099153800
          tz.transition 2005, 3, :o3, 1111854600
          tz.transition 2005, 10, :o4, 1130603400
          tz.transition 2006, 4, :o3, 1143909000
          tz.transition 2006, 10, :o4, 1162053000
          tz.transition 2007, 3, :o3, 1174753800
          tz.transition 2007, 10, :o4, 1193502600
          tz.transition 2008, 3, :o3, 1206808200
          tz.transition 2008, 10, :o4, 1224952200
          tz.transition 2009, 3, :o3, 1238257800
          tz.transition 2009, 10, :o4, 1256401800
          tz.transition 2010, 3, :o3, 1269707400
          tz.transition 2010, 10, :o4, 1288456200
          tz.transition 2011, 3, :o3, 1301157000
          tz.transition 2011, 10, :o4, 1319905800
          tz.transition 2012, 3, :o3, 1332606600
          tz.transition 2012, 10, :o4, 1351355400
          tz.transition 2013, 3, :o3, 1364661000
          tz.transition 2013, 10, :o4, 1382805000
          tz.transition 2014, 3, :o3, 1396110600
          tz.transition 2014, 10, :o4, 1414254600
          tz.transition 2015, 3, :o3, 1427560200
          tz.transition 2015, 10, :o4, 1445704200
          tz.transition 2016, 3, :o3, 1459009800
          tz.transition 2016, 10, :o4, 1477758600
          tz.transition 2017, 3, :o3, 1490459400
          tz.transition 2017, 10, :o4, 1509208200
          tz.transition 2018, 3, :o3, 1521909000
          tz.transition 2018, 10, :o4, 1540657800
          tz.transition 2019, 3, :o3, 1553963400
          tz.transition 2019, 10, :o4, 1572107400
          tz.transition 2020, 3, :o3, 1585413000
          tz.transition 2020, 10, :o4, 1603557000
          tz.transition 2021, 3, :o3, 1616862600
          tz.transition 2021, 10, :o4, 1635611400
          tz.transition 2022, 3, :o3, 1648312200
          tz.transition 2022, 10, :o4, 1667061000
          tz.transition 2023, 3, :o3, 1679761800
          tz.transition 2023, 10, :o4, 1698510600
          tz.transition 2024, 3, :o3, 1711816200
          tz.transition 2024, 10, :o4, 1729960200
          tz.transition 2025, 3, :o3, 1743265800
          tz.transition 2025, 10, :o4, 1761409800
          tz.transition 2026, 3, :o3, 1774715400
          tz.transition 2026, 10, :o4, 1792859400
          tz.transition 2027, 3, :o3, 1806165000
          tz.transition 2027, 10, :o4, 1824913800
          tz.transition 2028, 3, :o3, 1837614600
          tz.transition 2028, 10, :o4, 1856363400
          tz.transition 2029, 3, :o3, 1869064200
          tz.transition 2029, 10, :o4, 1887813000
          tz.transition 2030, 3, :o3, 1901118600
          tz.transition 2030, 10, :o4, 1919262600
          tz.transition 2031, 3, :o3, 1932568200
          tz.transition 2031, 10, :o4, 1950712200
          tz.transition 2032, 3, :o3, 1964017800
          tz.transition 2032, 10, :o4, 1982766600
          tz.transition 2033, 3, :o3, 1995467400
          tz.transition 2033, 10, :o4, 2014216200
          tz.transition 2034, 3, :o3, 2026917000
          tz.transition 2034, 10, :o4, 2045665800
          tz.transition 2035, 3, :o3, 2058366600
          tz.transition 2035, 10, :o4, 2077115400
          tz.transition 2036, 3, :o3, 2090421000
          tz.transition 2036, 10, :o4, 2108565000
          tz.transition 2037, 3, :o3, 2121870600
          tz.transition 2037, 10, :o4, 2140014600
          tz.transition 2038, 3, :o3, 39448163, 16
          tz.transition 2038, 10, :o4, 39451635, 16
          tz.transition 2039, 3, :o3, 39453987, 16
          tz.transition 2039, 10, :o4, 39457459, 16
          tz.transition 2040, 3, :o3, 39459811, 16
          tz.transition 2040, 10, :o4, 39463283, 16
          tz.transition 2041, 3, :o3, 39465747, 16
          tz.transition 2041, 10, :o4, 39469107, 16
          tz.transition 2042, 3, :o3, 39471571, 16
          tz.transition 2042, 10, :o4, 39474931, 16
          tz.transition 2043, 3, :o3, 39477395, 16
          tz.transition 2043, 10, :o4, 39480755, 16
          tz.transition 2044, 3, :o3, 39483219, 16
          tz.transition 2044, 10, :o4, 39486691, 16
          tz.transition 2045, 3, :o3, 39489043, 16
          tz.transition 2045, 10, :o4, 39492515, 16
          tz.transition 2046, 3, :o3, 39494867, 16
          tz.transition 2046, 10, :o4, 39498339, 16
          tz.transition 2047, 3, :o3, 39500803, 16
          tz.transition 2047, 10, :o4, 39504163, 16
          tz.transition 2048, 3, :o3, 39506627, 16
          tz.transition 2048, 10, :o4, 39509987, 16
          tz.transition 2049, 3, :o3, 39512451, 16
          tz.transition 2049, 10, :o4, 39515923, 16
          tz.transition 2050, 3, :o3, 39518275, 16
        end
      end
    end
  end
end
