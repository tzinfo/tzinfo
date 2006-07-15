require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Asia
      module Choibalsan
        include TimezoneDefinition
        
        timezone 'Asia/Choibalsan' do |tz|
          tz.offset :o0, 27480, 0, :LMT
          tz.offset :o1, 25200, 0, :ULAT
          tz.offset :o2, 28800, 0, :ULAT
          tz.offset :o3, 32400, 3600, :CHOST
          tz.offset :o4, 32400, 0, :CHOT
          
          tz.transition 1905, 7, :o1, 1740281891, 720
          tz.transition 1977, 12, :o2, 252435600
          tz.transition 1983, 3, :o3, 417974400
          tz.transition 1983, 9, :o4, 433778400
          tz.transition 1984, 3, :o3, 449593200
          tz.transition 1984, 9, :o4, 465314400
          tz.transition 1985, 3, :o3, 481042800
          tz.transition 1985, 9, :o4, 496764000
          tz.transition 1986, 3, :o3, 512492400
          tz.transition 1986, 9, :o4, 528213600
          tz.transition 1987, 3, :o3, 543942000
          tz.transition 1987, 9, :o4, 559663200
          tz.transition 1988, 3, :o3, 575391600
          tz.transition 1988, 9, :o4, 591112800
          tz.transition 1989, 3, :o3, 606841200
          tz.transition 1989, 9, :o4, 622562400
          tz.transition 1990, 3, :o3, 638290800
          tz.transition 1990, 9, :o4, 654616800
          tz.transition 1991, 3, :o3, 670345200
          tz.transition 1991, 9, :o4, 686066400
          tz.transition 1992, 3, :o3, 701794800
          tz.transition 1992, 9, :o4, 717516000
          tz.transition 1993, 3, :o3, 733244400
          tz.transition 1993, 9, :o4, 748965600
          tz.transition 1994, 3, :o3, 764694000
          tz.transition 1994, 9, :o4, 780415200
          tz.transition 1995, 3, :o3, 796143600
          tz.transition 1995, 9, :o4, 811864800
          tz.transition 1996, 3, :o3, 828198000
          tz.transition 1996, 9, :o4, 843919200
          tz.transition 1997, 3, :o3, 859647600
          tz.transition 1997, 9, :o4, 875368800
          tz.transition 1998, 3, :o3, 891097200
          tz.transition 1998, 9, :o4, 906818400
          tz.transition 2001, 4, :o3, 988390800
          tz.transition 2001, 9, :o4, 1001692800
          tz.transition 2002, 3, :o3, 1017421200
          tz.transition 2002, 9, :o4, 1033142400
          tz.transition 2003, 3, :o3, 1048870800
          tz.transition 2003, 9, :o4, 1064592000
          tz.transition 2004, 3, :o3, 1080320400
          tz.transition 2004, 9, :o4, 1096041600
          tz.transition 2005, 3, :o3, 1111770000
          tz.transition 2005, 9, :o4, 1127491200
          tz.transition 2006, 3, :o3, 1143219600
          tz.transition 2006, 9, :o4, 1159545600
          tz.transition 2007, 3, :o3, 1175274000
          tz.transition 2007, 9, :o4, 1190995200
          tz.transition 2008, 3, :o3, 1206723600
          tz.transition 2008, 9, :o4, 1222444800
          tz.transition 2009, 3, :o3, 1238173200
          tz.transition 2009, 9, :o4, 1253894400
          tz.transition 2010, 3, :o3, 1269622800
          tz.transition 2010, 9, :o4, 1285344000
          tz.transition 2011, 3, :o3, 1301072400
          tz.transition 2011, 9, :o4, 1316793600
          tz.transition 2012, 3, :o3, 1333126800
          tz.transition 2012, 9, :o4, 1348848000
          tz.transition 2013, 3, :o3, 1364576400
          tz.transition 2013, 9, :o4, 1380297600
          tz.transition 2014, 3, :o3, 1396026000
          tz.transition 2014, 9, :o4, 1411747200
          tz.transition 2015, 3, :o3, 1427475600
          tz.transition 2015, 9, :o4, 1443196800
          tz.transition 2016, 3, :o3, 1458925200
          tz.transition 2016, 9, :o4, 1474646400
          tz.transition 2017, 3, :o3, 1490374800
          tz.transition 2017, 9, :o4, 1506700800
          tz.transition 2018, 3, :o3, 1522429200
          tz.transition 2018, 9, :o4, 1538150400
          tz.transition 2019, 3, :o3, 1553878800
          tz.transition 2019, 9, :o4, 1569600000
          tz.transition 2020, 3, :o3, 1585328400
          tz.transition 2020, 9, :o4, 1601049600
          tz.transition 2021, 3, :o3, 1616778000
          tz.transition 2021, 9, :o4, 1632499200
          tz.transition 2022, 3, :o3, 1648227600
          tz.transition 2022, 9, :o4, 1663948800
          tz.transition 2023, 3, :o3, 1679677200
          tz.transition 2023, 9, :o4, 1696003200
          tz.transition 2024, 3, :o3, 1711731600
          tz.transition 2024, 9, :o4, 1727452800
          tz.transition 2025, 3, :o3, 1743181200
          tz.transition 2025, 9, :o4, 1758902400
          tz.transition 2026, 3, :o3, 1774630800
          tz.transition 2026, 9, :o4, 1790352000
          tz.transition 2027, 3, :o3, 1806080400
          tz.transition 2027, 9, :o4, 1821801600
          tz.transition 2028, 3, :o3, 1837530000
          tz.transition 2028, 9, :o4, 1853856000
          tz.transition 2029, 3, :o3, 1869584400
          tz.transition 2029, 9, :o4, 1885305600
          tz.transition 2030, 3, :o3, 1901034000
          tz.transition 2030, 9, :o4, 1916755200
          tz.transition 2031, 3, :o3, 1932483600
          tz.transition 2031, 9, :o4, 1948204800
          tz.transition 2032, 3, :o3, 1963933200
          tz.transition 2032, 9, :o4, 1979654400
          tz.transition 2033, 3, :o3, 1995382800
          tz.transition 2033, 9, :o4, 2011104000
          tz.transition 2034, 3, :o3, 2026832400
          tz.transition 2034, 9, :o4, 2043158400
          tz.transition 2035, 3, :o3, 2058886800
          tz.transition 2035, 9, :o4, 2074608000
          tz.transition 2036, 3, :o3, 2090336400
          tz.transition 2036, 9, :o4, 2106057600
          tz.transition 2037, 3, :o3, 2121786000
          tz.transition 2037, 9, :o4, 2137507200
          tz.transition 2038, 3, :o3, 59172221, 24
          tz.transition 2038, 9, :o4, 14794147, 6
          tz.transition 2039, 3, :o3, 59180957, 24
          tz.transition 2039, 9, :o4, 14796331, 6
          tz.transition 2040, 3, :o3, 59189861, 24
          tz.transition 2040, 9, :o4, 14798557, 6
          tz.transition 2041, 3, :o3, 59198597, 24
          tz.transition 2041, 9, :o4, 14800741, 6
          tz.transition 2042, 3, :o3, 59207333, 24
          tz.transition 2042, 9, :o4, 14802925, 6
          tz.transition 2043, 3, :o3, 59216069, 24
          tz.transition 2043, 9, :o4, 14805109, 6
          tz.transition 2044, 3, :o3, 59224805, 24
          tz.transition 2044, 9, :o4, 14807293, 6
          tz.transition 2045, 3, :o3, 59233541, 24
          tz.transition 2045, 9, :o4, 14809519, 6
          tz.transition 2046, 3, :o3, 59242445, 24
          tz.transition 2046, 9, :o4, 14811703, 6
          tz.transition 2047, 3, :o3, 59251181, 24
          tz.transition 2047, 9, :o4, 14813887, 6
          tz.transition 2048, 3, :o3, 59259917, 24
          tz.transition 2048, 9, :o4, 14816071, 6
          tz.transition 2049, 3, :o3, 59268653, 24
          tz.transition 2049, 9, :o4, 14818255, 6
          tz.transition 2050, 3, :o3, 59277389, 24
          tz.transition 2050, 9, :o4, 14820439, 6
        end
      end
    end
  end
end
