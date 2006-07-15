require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Australia
      module Lord_Howe
        include TimezoneDefinition
        
        timezone 'Australia/Lord_Howe' do |tz|
          tz.offset :o0, 38180, 0, :LMT
          tz.offset :o1, 36000, 0, :EST
          tz.offset :o2, 37800, 0, :LHST
          tz.offset :o3, 37800, 3600, :LHST
          tz.offset :o4, 37800, 1800, :LHST
          
          tz.transition 1895, 1, :o1, 10425132251, 4320
          tz.transition 1981, 2, :o2, 352216800
          tz.transition 1981, 10, :o3, 372785400
          tz.transition 1982, 3, :o2, 384273000
          tz.transition 1982, 10, :o3, 404839800
          tz.transition 1983, 3, :o2, 415722600
          tz.transition 1983, 10, :o3, 436289400
          tz.transition 1984, 3, :o2, 447172200
          tz.transition 1984, 10, :o3, 467739000
          tz.transition 1985, 3, :o2, 478621800
          tz.transition 1985, 10, :o4, 499188600
          tz.transition 1986, 3, :o2, 511282800
          tz.transition 1986, 10, :o4, 530033400
          tz.transition 1987, 3, :o2, 542732400
          tz.transition 1987, 10, :o4, 562087800
          tz.transition 1988, 3, :o2, 574786800
          tz.transition 1988, 10, :o4, 594142200
          tz.transition 1989, 3, :o2, 606236400
          tz.transition 1989, 10, :o4, 625591800
          tz.transition 1990, 3, :o2, 636476400
          tz.transition 1990, 10, :o4, 657041400
          tz.transition 1991, 3, :o2, 667926000
          tz.transition 1991, 10, :o4, 688491000
          tz.transition 1992, 2, :o2, 699375600
          tz.transition 1992, 10, :o4, 719940600
          tz.transition 1993, 3, :o2, 731430000
          tz.transition 1993, 10, :o4, 751995000
          tz.transition 1994, 3, :o2, 762879600
          tz.transition 1994, 10, :o4, 783444600
          tz.transition 1995, 3, :o2, 794329200
          tz.transition 1995, 10, :o4, 814894200
          tz.transition 1996, 3, :o2, 828198000
          tz.transition 1996, 10, :o4, 846343800
          tz.transition 1997, 3, :o2, 859647600
          tz.transition 1997, 10, :o4, 877793400
          tz.transition 1998, 3, :o2, 891097200
          tz.transition 1998, 10, :o4, 909243000
          tz.transition 1999, 3, :o2, 922546800
          tz.transition 1999, 10, :o4, 941297400
          tz.transition 2000, 3, :o2, 953996400
          tz.transition 2000, 8, :o4, 967303800
          tz.transition 2001, 3, :o2, 985446000
          tz.transition 2001, 10, :o4, 1004196600
          tz.transition 2002, 3, :o2, 1017500400
          tz.transition 2002, 10, :o4, 1035646200
          tz.transition 2003, 3, :o2, 1048950000
          tz.transition 2003, 10, :o4, 1067095800
          tz.transition 2004, 3, :o2, 1080399600
          tz.transition 2004, 10, :o4, 1099150200
          tz.transition 2005, 3, :o2, 1111849200
          tz.transition 2005, 10, :o4, 1130599800
          tz.transition 2006, 4, :o2, 1143903600
          tz.transition 2006, 10, :o4, 1162049400
          tz.transition 2007, 3, :o2, 1174748400
          tz.transition 2007, 10, :o4, 1193499000
          tz.transition 2008, 3, :o2, 1206802800
          tz.transition 2008, 10, :o4, 1224948600
          tz.transition 2009, 3, :o2, 1238252400
          tz.transition 2009, 10, :o4, 1256398200
          tz.transition 2010, 3, :o2, 1269702000
          tz.transition 2010, 10, :o4, 1288452600
          tz.transition 2011, 3, :o2, 1301151600
          tz.transition 2011, 10, :o4, 1319902200
          tz.transition 2012, 3, :o2, 1332601200
          tz.transition 2012, 10, :o4, 1351351800
          tz.transition 2013, 3, :o2, 1364655600
          tz.transition 2013, 10, :o4, 1382801400
          tz.transition 2014, 3, :o2, 1396105200
          tz.transition 2014, 10, :o4, 1414251000
          tz.transition 2015, 3, :o2, 1427554800
          tz.transition 2015, 10, :o4, 1445700600
          tz.transition 2016, 3, :o2, 1459004400
          tz.transition 2016, 10, :o4, 1477755000
          tz.transition 2017, 3, :o2, 1490454000
          tz.transition 2017, 10, :o4, 1509204600
          tz.transition 2018, 3, :o2, 1521903600
          tz.transition 2018, 10, :o4, 1540654200
          tz.transition 2019, 3, :o2, 1553958000
          tz.transition 2019, 10, :o4, 1572103800
          tz.transition 2020, 3, :o2, 1585407600
          tz.transition 2020, 10, :o4, 1603553400
          tz.transition 2021, 3, :o2, 1616857200
          tz.transition 2021, 10, :o4, 1635607800
          tz.transition 2022, 3, :o2, 1648306800
          tz.transition 2022, 10, :o4, 1667057400
          tz.transition 2023, 3, :o2, 1679756400
          tz.transition 2023, 10, :o4, 1698507000
          tz.transition 2024, 3, :o2, 1711810800
          tz.transition 2024, 10, :o4, 1729956600
          tz.transition 2025, 3, :o2, 1743260400
          tz.transition 2025, 10, :o4, 1761406200
          tz.transition 2026, 3, :o2, 1774710000
          tz.transition 2026, 10, :o4, 1792855800
          tz.transition 2027, 3, :o2, 1806159600
          tz.transition 2027, 10, :o4, 1824910200
          tz.transition 2028, 3, :o2, 1837609200
          tz.transition 2028, 10, :o4, 1856359800
          tz.transition 2029, 3, :o2, 1869058800
          tz.transition 2029, 10, :o4, 1887809400
          tz.transition 2030, 3, :o2, 1901113200
          tz.transition 2030, 10, :o4, 1919259000
          tz.transition 2031, 3, :o2, 1932562800
          tz.transition 2031, 10, :o4, 1950708600
          tz.transition 2032, 3, :o2, 1964012400
          tz.transition 2032, 10, :o4, 1982763000
          tz.transition 2033, 3, :o2, 1995462000
          tz.transition 2033, 10, :o4, 2014212600
          tz.transition 2034, 3, :o2, 2026911600
          tz.transition 2034, 10, :o4, 2045662200
          tz.transition 2035, 3, :o2, 2058361200
          tz.transition 2035, 10, :o4, 2077111800
          tz.transition 2036, 3, :o2, 2090415600
          tz.transition 2036, 10, :o4, 2108561400
          tz.transition 2037, 3, :o2, 2121865200
          tz.transition 2037, 10, :o4, 2140011000
          tz.transition 2038, 3, :o2, 19724081, 8
          tz.transition 2038, 10, :o4, 118354903, 48
          tz.transition 2039, 3, :o2, 19726993, 8
          tz.transition 2039, 10, :o4, 118372375, 48
          tz.transition 2040, 3, :o2, 19729905, 8
          tz.transition 2040, 10, :o4, 118389847, 48
          tz.transition 2041, 3, :o2, 19732873, 8
          tz.transition 2041, 10, :o4, 118407319, 48
          tz.transition 2042, 3, :o2, 19735785, 8
          tz.transition 2042, 10, :o4, 118424791, 48
          tz.transition 2043, 3, :o2, 19738697, 8
          tz.transition 2043, 10, :o4, 118442263, 48
          tz.transition 2044, 3, :o2, 19741609, 8
          tz.transition 2044, 10, :o4, 118460071, 48
          tz.transition 2045, 3, :o2, 19744521, 8
          tz.transition 2045, 10, :o4, 118477543, 48
          tz.transition 2046, 3, :o2, 19747433, 8
          tz.transition 2046, 10, :o4, 118495015, 48
          tz.transition 2047, 3, :o2, 19750401, 8
          tz.transition 2047, 10, :o4, 118512487, 48
          tz.transition 2048, 3, :o2, 19753313, 8
          tz.transition 2048, 10, :o4, 118529959, 48
          tz.transition 2049, 3, :o2, 19756225, 8
          tz.transition 2049, 10, :o4, 118547767, 48
          tz.transition 2050, 3, :o2, 19759137, 8
        end
      end
    end
  end
end
