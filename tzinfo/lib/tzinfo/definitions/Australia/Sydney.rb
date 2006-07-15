require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Australia
      module Sydney
        include TimezoneDefinition
        
        timezone 'Australia/Sydney' do |tz|
          tz.offset :o0, 36292, 0, :LMT
          tz.offset :o1, 36000, 0, :EST
          tz.offset :o2, 36000, 3600, :EST
          
          tz.transition 1895, 1, :o1, 52125661727, 21600
          tz.transition 1916, 12, :o2, 3486569881, 1440
          tz.transition 1917, 3, :o1, 19370497, 8
          tz.transition 1941, 12, :o2, 14582161, 6
          tz.transition 1942, 3, :o1, 19443577, 8
          tz.transition 1942, 9, :o2, 14583775, 6
          tz.transition 1943, 3, :o1, 19446489, 8
          tz.transition 1943, 10, :o2, 14586001, 6
          tz.transition 1944, 3, :o1, 19449401, 8
          tz.transition 1971, 10, :o2, 57686400
          tz.transition 1972, 2, :o1, 67968000
          tz.transition 1972, 10, :o2, 89136000
          tz.transition 1973, 3, :o1, 100022400
          tz.transition 1973, 10, :o2, 120585600
          tz.transition 1974, 3, :o1, 131472000
          tz.transition 1974, 10, :o2, 152035200
          tz.transition 1975, 3, :o1, 162921600
          tz.transition 1975, 10, :o2, 183484800
          tz.transition 1976, 3, :o1, 194976000
          tz.transition 1976, 10, :o2, 215539200
          tz.transition 1977, 3, :o1, 226425600
          tz.transition 1977, 10, :o2, 246988800
          tz.transition 1978, 3, :o1, 257875200
          tz.transition 1978, 10, :o2, 278438400
          tz.transition 1979, 3, :o1, 289324800
          tz.transition 1979, 10, :o2, 309888000
          tz.transition 1980, 3, :o1, 320774400
          tz.transition 1980, 10, :o2, 341337600
          tz.transition 1981, 2, :o1, 352224000
          tz.transition 1981, 10, :o2, 372787200
          tz.transition 1982, 4, :o1, 386697600
          tz.transition 1982, 10, :o2, 404841600
          tz.transition 1983, 3, :o1, 415728000
          tz.transition 1983, 10, :o2, 436291200
          tz.transition 1984, 3, :o1, 447177600
          tz.transition 1984, 10, :o2, 467740800
          tz.transition 1985, 3, :o1, 478627200
          tz.transition 1985, 10, :o2, 499190400
          tz.transition 1986, 3, :o1, 511286400
          tz.transition 1986, 10, :o2, 530035200
          tz.transition 1987, 3, :o1, 542736000
          tz.transition 1987, 10, :o2, 562089600
          tz.transition 1988, 3, :o1, 574790400
          tz.transition 1988, 10, :o2, 594144000
          tz.transition 1989, 3, :o1, 606240000
          tz.transition 1989, 10, :o2, 625593600
          tz.transition 1990, 3, :o1, 636480000
          tz.transition 1990, 10, :o2, 657043200
          tz.transition 1991, 3, :o1, 667929600
          tz.transition 1991, 10, :o2, 688492800
          tz.transition 1992, 2, :o1, 699379200
          tz.transition 1992, 10, :o2, 719942400
          tz.transition 1993, 3, :o1, 731433600
          tz.transition 1993, 10, :o2, 751996800
          tz.transition 1994, 3, :o1, 762883200
          tz.transition 1994, 10, :o2, 783446400
          tz.transition 1995, 3, :o1, 794332800
          tz.transition 1995, 10, :o2, 814896000
          tz.transition 1996, 3, :o1, 828201600
          tz.transition 1996, 10, :o2, 846345600
          tz.transition 1997, 3, :o1, 859651200
          tz.transition 1997, 10, :o2, 877795200
          tz.transition 1998, 3, :o1, 891100800
          tz.transition 1998, 10, :o2, 909244800
          tz.transition 1999, 3, :o1, 922550400
          tz.transition 1999, 10, :o2, 941299200
          tz.transition 2000, 3, :o1, 954000000
          tz.transition 2000, 8, :o2, 967305600
          tz.transition 2001, 3, :o1, 985449600
          tz.transition 2001, 10, :o2, 1004198400
          tz.transition 2002, 3, :o1, 1017504000
          tz.transition 2002, 10, :o2, 1035648000
          tz.transition 2003, 3, :o1, 1048953600
          tz.transition 2003, 10, :o2, 1067097600
          tz.transition 2004, 3, :o1, 1080403200
          tz.transition 2004, 10, :o2, 1099152000
          tz.transition 2005, 3, :o1, 1111852800
          tz.transition 2005, 10, :o2, 1130601600
          tz.transition 2006, 4, :o1, 1143907200
          tz.transition 2006, 10, :o2, 1162051200
          tz.transition 2007, 3, :o1, 1174752000
          tz.transition 2007, 10, :o2, 1193500800
          tz.transition 2008, 3, :o1, 1206806400
          tz.transition 2008, 10, :o2, 1224950400
          tz.transition 2009, 3, :o1, 1238256000
          tz.transition 2009, 10, :o2, 1256400000
          tz.transition 2010, 3, :o1, 1269705600
          tz.transition 2010, 10, :o2, 1288454400
          tz.transition 2011, 3, :o1, 1301155200
          tz.transition 2011, 10, :o2, 1319904000
          tz.transition 2012, 3, :o1, 1332604800
          tz.transition 2012, 10, :o2, 1351353600
          tz.transition 2013, 3, :o1, 1364659200
          tz.transition 2013, 10, :o2, 1382803200
          tz.transition 2014, 3, :o1, 1396108800
          tz.transition 2014, 10, :o2, 1414252800
          tz.transition 2015, 3, :o1, 1427558400
          tz.transition 2015, 10, :o2, 1445702400
          tz.transition 2016, 3, :o1, 1459008000
          tz.transition 2016, 10, :o2, 1477756800
          tz.transition 2017, 3, :o1, 1490457600
          tz.transition 2017, 10, :o2, 1509206400
          tz.transition 2018, 3, :o1, 1521907200
          tz.transition 2018, 10, :o2, 1540656000
          tz.transition 2019, 3, :o1, 1553961600
          tz.transition 2019, 10, :o2, 1572105600
          tz.transition 2020, 3, :o1, 1585411200
          tz.transition 2020, 10, :o2, 1603555200
          tz.transition 2021, 3, :o1, 1616860800
          tz.transition 2021, 10, :o2, 1635609600
          tz.transition 2022, 3, :o1, 1648310400
          tz.transition 2022, 10, :o2, 1667059200
          tz.transition 2023, 3, :o1, 1679760000
          tz.transition 2023, 10, :o2, 1698508800
          tz.transition 2024, 3, :o1, 1711814400
          tz.transition 2024, 10, :o2, 1729958400
          tz.transition 2025, 3, :o1, 1743264000
          tz.transition 2025, 10, :o2, 1761408000
          tz.transition 2026, 3, :o1, 1774713600
          tz.transition 2026, 10, :o2, 1792857600
          tz.transition 2027, 3, :o1, 1806163200
          tz.transition 2027, 10, :o2, 1824912000
          tz.transition 2028, 3, :o1, 1837612800
          tz.transition 2028, 10, :o2, 1856361600
          tz.transition 2029, 3, :o1, 1869062400
          tz.transition 2029, 10, :o2, 1887811200
          tz.transition 2030, 3, :o1, 1901116800
          tz.transition 2030, 10, :o2, 1919260800
          tz.transition 2031, 3, :o1, 1932566400
          tz.transition 2031, 10, :o2, 1950710400
          tz.transition 2032, 3, :o1, 1964016000
          tz.transition 2032, 10, :o2, 1982764800
          tz.transition 2033, 3, :o1, 1995465600
          tz.transition 2033, 10, :o2, 2014214400
          tz.transition 2034, 3, :o1, 2026915200
          tz.transition 2034, 10, :o2, 2045664000
          tz.transition 2035, 3, :o1, 2058364800
          tz.transition 2035, 10, :o2, 2077113600
          tz.transition 2036, 3, :o1, 2090419200
          tz.transition 2036, 10, :o2, 2108563200
          tz.transition 2037, 3, :o1, 2121868800
          tz.transition 2037, 10, :o2, 2140012800
          tz.transition 2038, 3, :o1, 14793061, 6
          tz.transition 2038, 10, :o2, 14794363, 6
          tz.transition 2039, 3, :o1, 14795245, 6
          tz.transition 2039, 10, :o2, 14796547, 6
          tz.transition 2040, 3, :o1, 14797429, 6
          tz.transition 2040, 10, :o2, 14798731, 6
          tz.transition 2041, 3, :o1, 14799655, 6
          tz.transition 2041, 10, :o2, 14800915, 6
          tz.transition 2042, 3, :o1, 14801839, 6
          tz.transition 2042, 10, :o2, 14803099, 6
          tz.transition 2043, 3, :o1, 14804023, 6
          tz.transition 2043, 10, :o2, 14805283, 6
          tz.transition 2044, 3, :o1, 14806207, 6
          tz.transition 2044, 10, :o2, 14807509, 6
          tz.transition 2045, 3, :o1, 14808391, 6
          tz.transition 2045, 10, :o2, 14809693, 6
          tz.transition 2046, 3, :o1, 14810575, 6
          tz.transition 2046, 10, :o2, 14811877, 6
          tz.transition 2047, 3, :o1, 14812801, 6
          tz.transition 2047, 10, :o2, 14814061, 6
          tz.transition 2048, 3, :o1, 14814985, 6
          tz.transition 2048, 10, :o2, 14816245, 6
          tz.transition 2049, 3, :o1, 14817169, 6
          tz.transition 2049, 10, :o2, 14818471, 6
          tz.transition 2050, 3, :o1, 14819353, 6
        end
      end
    end
  end
end
