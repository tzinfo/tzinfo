require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Amman #:nodoc:
        include TimezoneDefinition
        
        timezone 'Asia/Amman' do |tz|
          tz.offset :o0, 8624, 0, :LMT
          tz.offset :o1, 7200, 0, :EET
          tz.offset :o2, 7200, 3600, :EEST
          
          tz.transition 1930, 12, :o1, 13102248961, 5400
          tz.transition 1973, 6, :o2, 108165600
          tz.transition 1973, 9, :o1, 118270800
          tz.transition 1974, 4, :o2, 136591200
          tz.transition 1974, 9, :o1, 149806800
          tz.transition 1975, 4, :o2, 168127200
          tz.transition 1975, 9, :o1, 181342800
          tz.transition 1976, 4, :o2, 199749600
          tz.transition 1976, 10, :o1, 215643600
          tz.transition 1977, 4, :o2, 231285600
          tz.transition 1977, 9, :o1, 244501200
          tz.transition 1978, 4, :o2, 262735200
          tz.transition 1978, 9, :o1, 275950800
          tz.transition 1985, 3, :o2, 481154400
          tz.transition 1985, 9, :o1, 496962000
          tz.transition 1986, 4, :o2, 512949600
          tz.transition 1986, 10, :o1, 528670800
          tz.transition 1987, 4, :o2, 544399200
          tz.transition 1987, 10, :o1, 560120400
          tz.transition 1988, 3, :o2, 575848800
          tz.transition 1988, 10, :o1, 592174800
          tz.transition 1989, 5, :o2, 610581600
          tz.transition 1989, 10, :o1, 623624400
          tz.transition 1990, 4, :o2, 641167200
          tz.transition 1990, 10, :o1, 655074000
          tz.transition 1991, 4, :o2, 671839200
          tz.transition 1991, 9, :o1, 685918800
          tz.transition 1992, 4, :o2, 702856800
          tz.transition 1992, 10, :o1, 717973200
          tz.transition 1993, 4, :o2, 733701600
          tz.transition 1993, 9, :o1, 749422800
          tz.transition 1994, 3, :o2, 765151200
          tz.transition 1994, 9, :o1, 779662800
          tz.transition 1995, 4, :o2, 797205600
          tz.transition 1995, 9, :o1, 811116000
          tz.transition 1996, 4, :o2, 828655200
          tz.transition 1996, 9, :o1, 843170400
          tz.transition 1997, 4, :o2, 860104800
          tz.transition 1997, 9, :o1, 874620000
          tz.transition 1998, 4, :o2, 891554400
          tz.transition 1998, 9, :o1, 906069600
          tz.transition 1999, 6, :o2, 930780000
          tz.transition 1999, 9, :o1, 938642400
          tz.transition 2000, 3, :o2, 954367200
          tz.transition 2000, 9, :o1, 970092000
          tz.transition 2001, 3, :o2, 985816800
          tz.transition 2001, 9, :o1, 1001541600
          tz.transition 2002, 3, :o2, 1017266400
          tz.transition 2002, 9, :o1, 1032991200
          tz.transition 2003, 3, :o2, 1048716000
          tz.transition 2003, 10, :o1, 1066946400
          tz.transition 2004, 3, :o2, 1080165600
          tz.transition 2004, 10, :o1, 1097791200
          tz.transition 2005, 3, :o2, 1112220000
          tz.transition 2005, 9, :o1, 1128031200
          tz.transition 2006, 3, :o2, 1143669600
          tz.transition 2006, 9, :o1, 1159480800
          tz.transition 2007, 3, :o2, 1175119200
          tz.transition 2007, 9, :o1, 1190930400
          tz.transition 2008, 3, :o2, 1206568800
          tz.transition 2008, 9, :o1, 1222380000
          tz.transition 2009, 3, :o2, 1238018400
          tz.transition 2009, 9, :o1, 1253829600
          tz.transition 2010, 3, :o2, 1269468000
          tz.transition 2010, 9, :o1, 1285279200
          tz.transition 2011, 3, :o2, 1301522400
          tz.transition 2011, 9, :o1, 1317333600
          tz.transition 2012, 3, :o2, 1332972000
          tz.transition 2012, 9, :o1, 1348783200
          tz.transition 2013, 3, :o2, 1364421600
          tz.transition 2013, 9, :o1, 1380232800
          tz.transition 2014, 3, :o2, 1395871200
          tz.transition 2014, 9, :o1, 1411682400
          tz.transition 2015, 3, :o2, 1427320800
          tz.transition 2015, 9, :o1, 1443132000
          tz.transition 2016, 3, :o2, 1459375200
          tz.transition 2016, 9, :o1, 1475186400
          tz.transition 2017, 3, :o2, 1490824800
          tz.transition 2017, 9, :o1, 1506636000
          tz.transition 2018, 3, :o2, 1522274400
          tz.transition 2018, 9, :o1, 1538085600
          tz.transition 2019, 3, :o2, 1553724000
          tz.transition 2019, 9, :o1, 1569535200
          tz.transition 2020, 3, :o2, 1585173600
          tz.transition 2020, 9, :o1, 1600984800
          tz.transition 2021, 3, :o2, 1616623200
          tz.transition 2021, 9, :o1, 1632434400
          tz.transition 2022, 3, :o2, 1648677600
          tz.transition 2022, 9, :o1, 1664488800
          tz.transition 2023, 3, :o2, 1680127200
          tz.transition 2023, 9, :o1, 1695938400
          tz.transition 2024, 3, :o2, 1711576800
          tz.transition 2024, 9, :o1, 1727388000
          tz.transition 2025, 3, :o2, 1743026400
          tz.transition 2025, 9, :o1, 1758837600
          tz.transition 2026, 3, :o2, 1774476000
          tz.transition 2026, 9, :o1, 1790287200
          tz.transition 2027, 3, :o2, 1805925600
          tz.transition 2027, 9, :o1, 1821736800
          tz.transition 2028, 3, :o2, 1837980000
          tz.transition 2028, 9, :o1, 1853791200
          tz.transition 2029, 3, :o2, 1869429600
          tz.transition 2029, 9, :o1, 1885240800
          tz.transition 2030, 3, :o2, 1900879200
          tz.transition 2030, 9, :o1, 1916690400
          tz.transition 2031, 3, :o2, 1932328800
          tz.transition 2031, 9, :o1, 1948140000
          tz.transition 2032, 3, :o2, 1963778400
          tz.transition 2032, 9, :o1, 1979589600
          tz.transition 2033, 3, :o2, 1995832800
          tz.transition 2033, 9, :o1, 2011644000
          tz.transition 2034, 3, :o2, 2027282400
          tz.transition 2034, 9, :o1, 2043093600
          tz.transition 2035, 3, :o2, 2058732000
          tz.transition 2035, 9, :o1, 2074543200
          tz.transition 2036, 3, :o2, 2090181600
          tz.transition 2036, 9, :o1, 2105992800
          tz.transition 2037, 3, :o2, 2121631200
          tz.transition 2037, 9, :o1, 2137442400
          tz.transition 2038, 3, :o2, 29586089, 12
          tz.transition 2038, 9, :o1, 29588285, 12
          tz.transition 2039, 3, :o2, 29590541, 12
          tz.transition 2039, 9, :o1, 29592737, 12
          tz.transition 2040, 3, :o2, 29594909, 12
          tz.transition 2040, 9, :o1, 29597105, 12
          tz.transition 2041, 3, :o2, 29599277, 12
          tz.transition 2041, 9, :o1, 29601473, 12
          tz.transition 2042, 3, :o2, 29603645, 12
          tz.transition 2042, 9, :o1, 29605841, 12
          tz.transition 2043, 3, :o2, 29608013, 12
          tz.transition 2043, 9, :o1, 29610209, 12
          tz.transition 2044, 3, :o2, 29612465, 12
          tz.transition 2044, 9, :o1, 29614661, 12
          tz.transition 2045, 3, :o2, 29616833, 12
          tz.transition 2045, 9, :o1, 29619029, 12
          tz.transition 2046, 3, :o2, 29621201, 12
          tz.transition 2046, 9, :o1, 29623397, 12
          tz.transition 2047, 3, :o2, 29625569, 12
          tz.transition 2047, 9, :o1, 29627765, 12
          tz.transition 2048, 3, :o2, 29629937, 12
          tz.transition 2048, 9, :o1, 29632133, 12
          tz.transition 2049, 3, :o2, 29634305, 12
          tz.transition 2049, 9, :o1, 29636501, 12
          tz.transition 2050, 3, :o2, 29638757, 12
          tz.transition 2050, 9, :o1, 29640953, 12
        end
      end
    end
  end
end
