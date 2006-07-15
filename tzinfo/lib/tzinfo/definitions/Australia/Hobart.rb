require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Australia
      module Hobart
        include TimezoneDefinition
        
        timezone 'Australia/Hobart' do |tz|
          tz.offset :o0, 35356, 0, :LMT
          tz.offset :o1, 36000, 0, :EST
          tz.offset :o2, 36000, 3600, :EST
          
          tz.transition 1895, 8, :o1, 52130241161, 21600
          tz.transition 1916, 9, :o2, 14526823, 6
          tz.transition 1917, 3, :o1, 19370497, 8
          tz.transition 1941, 12, :o2, 14582161, 6
          tz.transition 1942, 3, :o1, 19443577, 8
          tz.transition 1942, 9, :o2, 14583775, 6
          tz.transition 1943, 3, :o1, 19446489, 8
          tz.transition 1943, 10, :o2, 14586001, 6
          tz.transition 1944, 3, :o1, 19449401, 8
          tz.transition 1967, 9, :o2, 14638585, 6
          tz.transition 1968, 3, :o1, 14639677, 6
          tz.transition 1968, 10, :o2, 14640937, 6
          tz.transition 1969, 3, :o1, 14641735, 6
          tz.transition 1969, 10, :o2, 14643121, 6
          tz.transition 1970, 3, :o1, 5673600
          tz.transition 1970, 10, :o2, 25632000
          tz.transition 1971, 3, :o1, 37728000
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
          tz.transition 1982, 3, :o1, 386092800
          tz.transition 1982, 10, :o2, 404841600
          tz.transition 1983, 3, :o1, 417542400
          tz.transition 1983, 10, :o2, 436291200
          tz.transition 1984, 3, :o1, 447177600
          tz.transition 1984, 10, :o2, 467740800
          tz.transition 1985, 3, :o1, 478627200
          tz.transition 1985, 10, :o2, 499190400
          tz.transition 1986, 3, :o1, 510076800
          tz.transition 1986, 10, :o2, 530035200
          tz.transition 1987, 3, :o1, 542736000
          tz.transition 1987, 10, :o2, 562089600
          tz.transition 1988, 3, :o1, 574790400
          tz.transition 1988, 10, :o2, 594144000
          tz.transition 1989, 3, :o1, 606240000
          tz.transition 1989, 10, :o2, 625593600
          tz.transition 1990, 3, :o1, 637689600
          tz.transition 1990, 10, :o2, 657043200
          tz.transition 1991, 3, :o1, 670348800
          tz.transition 1991, 10, :o2, 686678400
          tz.transition 1992, 3, :o1, 701798400
          tz.transition 1992, 10, :o2, 718128000
          tz.transition 1993, 3, :o1, 733248000
          tz.transition 1993, 10, :o2, 749577600
          tz.transition 1994, 3, :o1, 764697600
          tz.transition 1994, 10, :o2, 781027200
          tz.transition 1995, 3, :o1, 796147200
          tz.transition 1995, 9, :o2, 812476800
          tz.transition 1996, 3, :o1, 828201600
          tz.transition 1996, 10, :o2, 844531200
          tz.transition 1997, 3, :o1, 859651200
          tz.transition 1997, 10, :o2, 875980800
          tz.transition 1998, 3, :o1, 891100800
          tz.transition 1998, 10, :o2, 907430400
          tz.transition 1999, 3, :o1, 922550400
          tz.transition 1999, 10, :o2, 938880000
          tz.transition 2000, 3, :o1, 954000000
          tz.transition 2000, 8, :o2, 967305600
          tz.transition 2001, 3, :o1, 985449600
          tz.transition 2001, 10, :o2, 1002384000
          tz.transition 2002, 3, :o1, 1017504000
          tz.transition 2002, 10, :o2, 1033833600
          tz.transition 2003, 3, :o1, 1048953600
          tz.transition 2003, 10, :o2, 1065283200
          tz.transition 2004, 3, :o1, 1080403200
          tz.transition 2004, 10, :o2, 1096732800
          tz.transition 2005, 3, :o1, 1111852800
          tz.transition 2005, 10, :o2, 1128182400
          tz.transition 2006, 4, :o1, 1143907200
          tz.transition 2006, 9, :o2, 1159632000
          tz.transition 2007, 3, :o1, 1174752000
          tz.transition 2007, 10, :o2, 1191686400
          tz.transition 2008, 3, :o1, 1206806400
          tz.transition 2008, 10, :o2, 1223136000
          tz.transition 2009, 3, :o1, 1238256000
          tz.transition 2009, 10, :o2, 1254585600
          tz.transition 2010, 3, :o1, 1269705600
          tz.transition 2010, 10, :o2, 1286035200
          tz.transition 2011, 3, :o1, 1301155200
          tz.transition 2011, 10, :o2, 1317484800
          tz.transition 2012, 3, :o1, 1332604800
          tz.transition 2012, 10, :o2, 1349539200
          tz.transition 2013, 3, :o1, 1364659200
          tz.transition 2013, 10, :o2, 1380988800
          tz.transition 2014, 3, :o1, 1396108800
          tz.transition 2014, 10, :o2, 1412438400
          tz.transition 2015, 3, :o1, 1427558400
          tz.transition 2015, 10, :o2, 1443888000
          tz.transition 2016, 3, :o1, 1459008000
          tz.transition 2016, 10, :o2, 1475337600
          tz.transition 2017, 3, :o1, 1490457600
          tz.transition 2017, 9, :o2, 1506787200
          tz.transition 2018, 3, :o1, 1521907200
          tz.transition 2018, 10, :o2, 1538841600
          tz.transition 2019, 3, :o1, 1553961600
          tz.transition 2019, 10, :o2, 1570291200
          tz.transition 2020, 3, :o1, 1585411200
          tz.transition 2020, 10, :o2, 1601740800
          tz.transition 2021, 3, :o1, 1616860800
          tz.transition 2021, 10, :o2, 1633190400
          tz.transition 2022, 3, :o1, 1648310400
          tz.transition 2022, 10, :o2, 1664640000
          tz.transition 2023, 3, :o1, 1679760000
          tz.transition 2023, 9, :o2, 1696089600
          tz.transition 2024, 3, :o1, 1711814400
          tz.transition 2024, 10, :o2, 1728144000
          tz.transition 2025, 3, :o1, 1743264000
          tz.transition 2025, 10, :o2, 1759593600
          tz.transition 2026, 3, :o1, 1774713600
          tz.transition 2026, 10, :o2, 1791043200
          tz.transition 2027, 3, :o1, 1806163200
          tz.transition 2027, 10, :o2, 1822492800
          tz.transition 2028, 3, :o1, 1837612800
          tz.transition 2028, 9, :o2, 1853942400
          tz.transition 2029, 3, :o1, 1869062400
          tz.transition 2029, 10, :o2, 1885996800
          tz.transition 2030, 3, :o1, 1901116800
          tz.transition 2030, 10, :o2, 1917446400
          tz.transition 2031, 3, :o1, 1932566400
          tz.transition 2031, 10, :o2, 1948896000
          tz.transition 2032, 3, :o1, 1964016000
          tz.transition 2032, 10, :o2, 1980345600
          tz.transition 2033, 3, :o1, 1995465600
          tz.transition 2033, 10, :o2, 2011795200
          tz.transition 2034, 3, :o1, 2026915200
          tz.transition 2034, 9, :o2, 2043244800
          tz.transition 2035, 3, :o1, 2058364800
          tz.transition 2035, 10, :o2, 2075299200
          tz.transition 2036, 3, :o1, 2090419200
          tz.transition 2036, 10, :o2, 2106748800
          tz.transition 2037, 3, :o1, 2121868800
          tz.transition 2037, 10, :o2, 2138198400
          tz.transition 2038, 3, :o1, 14793061, 6
          tz.transition 2038, 10, :o2, 14794195, 6
          tz.transition 2039, 3, :o1, 14795245, 6
          tz.transition 2039, 10, :o2, 14796379, 6
          tz.transition 2040, 3, :o1, 14797429, 6
          tz.transition 2040, 10, :o2, 14798605, 6
          tz.transition 2041, 3, :o1, 14799655, 6
          tz.transition 2041, 10, :o2, 14800789, 6
          tz.transition 2042, 3, :o1, 14801839, 6
          tz.transition 2042, 10, :o2, 14802973, 6
          tz.transition 2043, 3, :o1, 14804023, 6
          tz.transition 2043, 10, :o2, 14805157, 6
          tz.transition 2044, 3, :o1, 14806207, 6
          tz.transition 2044, 10, :o2, 14807341, 6
          tz.transition 2045, 3, :o1, 14808391, 6
          tz.transition 2045, 9, :o2, 14809525, 6
          tz.transition 2046, 3, :o1, 14810575, 6
          tz.transition 2046, 10, :o2, 14811751, 6
          tz.transition 2047, 3, :o1, 14812801, 6
          tz.transition 2047, 10, :o2, 14813935, 6
          tz.transition 2048, 3, :o1, 14814985, 6
          tz.transition 2048, 10, :o2, 14816119, 6
          tz.transition 2049, 3, :o1, 14817169, 6
          tz.transition 2049, 10, :o2, 14818303, 6
          tz.transition 2050, 3, :o1, 14819353, 6
        end
      end
    end
  end
end
