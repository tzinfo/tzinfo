# encoding: UTF-8

module TZInfo
  module Definitions
    module Asia
      module Gaza
        include TimezoneDefinition
        
        timezone 'Asia/Gaza' do |tz|
          tz.offset :o0, 8272, 0, :LMT
          tz.offset :o1, 7200, 0, :EET
          tz.offset :o2, 7200, 3600, :EEST
          tz.offset :o3, 7200, 0, :IST
          tz.offset :o4, 7200, 3600, :IDT
          
          tz.transition 1900, 9, :o1, 13042584383, 5400
          tz.transition 1940, 6, :o2, 4859563, 2
          tz.transition 1940, 10, :o1, 4859807, 2
          tz.transition 1940, 11, :o2, 4859901, 2
          tz.transition 1942, 11, :o1, 4861329, 2
          tz.transition 1943, 4, :o2, 4861631, 2
          tz.transition 1943, 11, :o1, 4862059, 2
          tz.transition 1944, 4, :o2, 4862363, 2
          tz.transition 1944, 11, :o1, 4862791, 2
          tz.transition 1945, 4, :o2, 4863123, 2
          tz.transition 1945, 11, :o1, 4863521, 2
          tz.transition 1946, 4, :o2, 4863853, 2
          tz.transition 1946, 11, :o1, 4864251, 2
          tz.transition 1957, 5, :o2, 29231621, 12
          tz.transition 1957, 9, :o1, 19488899, 8
          tz.transition 1958, 4, :o2, 29235893, 12
          tz.transition 1958, 9, :o1, 19491819, 8
          tz.transition 1959, 4, :o2, 58480547, 24
          tz.transition 1959, 9, :o1, 4873683, 2
          tz.transition 1960, 4, :o2, 58489331, 24
          tz.transition 1960, 9, :o1, 4874415, 2
          tz.transition 1961, 4, :o2, 58498091, 24
          tz.transition 1961, 9, :o1, 4875145, 2
          tz.transition 1962, 4, :o2, 58506851, 24
          tz.transition 1962, 9, :o1, 4875875, 2
          tz.transition 1963, 4, :o2, 58515611, 24
          tz.transition 1963, 9, :o1, 4876605, 2
          tz.transition 1964, 4, :o2, 58524395, 24
          tz.transition 1964, 9, :o1, 4877337, 2
          tz.transition 1965, 4, :o2, 58533155, 24
          tz.transition 1965, 9, :o1, 4878067, 2
          tz.transition 1966, 4, :o2, 58541915, 24
          tz.transition 1966, 10, :o1, 4878799, 2
          tz.transition 1967, 4, :o2, 58550675, 24
          tz.transition 1967, 6, :o3, 19517171, 8
          tz.transition 1974, 7, :o4, 142380000
          tz.transition 1974, 10, :o3, 150843600
          tz.transition 1975, 4, :o4, 167176800
          tz.transition 1975, 8, :o3, 178664400
          tz.transition 1980, 8, :o4, 334101600
          tz.transition 1980, 9, :o3, 337730400
          tz.transition 1984, 5, :o4, 452642400
          tz.transition 1984, 8, :o3, 462319200
          tz.transition 1985, 4, :o4, 482277600
          tz.transition 1985, 8, :o3, 494370000
          tz.transition 1986, 5, :o4, 516751200
          tz.transition 1986, 9, :o3, 526424400
          tz.transition 1987, 4, :o4, 545436000
          tz.transition 1987, 9, :o3, 558478800
          tz.transition 1988, 4, :o4, 576626400
          tz.transition 1988, 9, :o3, 589323600
          tz.transition 1989, 4, :o4, 609890400
          tz.transition 1989, 9, :o3, 620773200
          tz.transition 1990, 3, :o4, 638316000
          tz.transition 1990, 8, :o3, 651618000
          tz.transition 1991, 3, :o4, 669765600
          tz.transition 1991, 8, :o3, 683672400
          tz.transition 1992, 3, :o4, 701820000
          tz.transition 1992, 9, :o3, 715726800
          tz.transition 1993, 4, :o4, 733701600
          tz.transition 1993, 9, :o3, 747176400
          tz.transition 1994, 3, :o4, 765151200
          tz.transition 1994, 8, :o3, 778021200
          tz.transition 1995, 3, :o4, 796600800
          tz.transition 1995, 9, :o3, 810075600
          tz.transition 1995, 12, :o1, 820447200
          tz.transition 1996, 4, :o2, 828655200
          tz.transition 1996, 9, :o1, 843170400
          tz.transition 1997, 4, :o2, 860104800
          tz.transition 1997, 9, :o1, 874620000
          tz.transition 1998, 4, :o2, 891554400
          tz.transition 1998, 9, :o1, 906069600
          tz.transition 1999, 4, :o2, 924213600
          tz.transition 1999, 10, :o1, 939934800
          tz.transition 2000, 4, :o2, 956268000
          tz.transition 2000, 10, :o1, 971989200
          tz.transition 2001, 4, :o2, 987717600
          tz.transition 2001, 10, :o1, 1003438800
          tz.transition 2002, 4, :o2, 1019167200
          tz.transition 2002, 10, :o1, 1034888400
          tz.transition 2003, 4, :o2, 1050616800
          tz.transition 2003, 10, :o1, 1066338000
          tz.transition 2004, 4, :o2, 1082066400
          tz.transition 2004, 9, :o1, 1096581600
          tz.transition 2005, 4, :o2, 1113516000
          tz.transition 2005, 10, :o1, 1128380400
          tz.transition 2006, 3, :o2, 1143842400
          tz.transition 2006, 9, :o1, 1158872400
          tz.transition 2007, 3, :o2, 1175378400
          tz.transition 2007, 9, :o1, 1189638000
          tz.transition 2008, 3, :o2, 1206655200
          tz.transition 2008, 8, :o1, 1219957200
          tz.transition 2009, 3, :o2, 1238104800
          tz.transition 2009, 9, :o1, 1252015200
          tz.transition 2010, 3, :o2, 1269640860
          tz.transition 2010, 8, :o1, 1281474000
          tz.transition 2011, 3, :o2, 1301608860
          tz.transition 2011, 7, :o1, 1312146000
          tz.transition 2012, 3, :o2, 1333058400
          tz.transition 2012, 9, :o1, 1348178400
          tz.transition 2013, 3, :o2, 1364508000
          tz.transition 2013, 9, :o1, 1380229200
          tz.transition 2014, 3, :o2, 1395957600
          tz.transition 2014, 10, :o1, 1414098000
          tz.transition 2015, 3, :o2, 1427493600
          tz.transition 2015, 10, :o1, 1445551200
          tz.transition 2016, 3, :o2, 1458946800
          tz.transition 2016, 10, :o1, 1477692000
          tz.transition 2017, 3, :o2, 1490396400
          tz.transition 2017, 10, :o1, 1509141600
          tz.transition 2018, 3, :o2, 1521846000
          tz.transition 2018, 10, :o1, 1540591200
          tz.transition 2019, 3, :o2, 1553810400
          tz.transition 2019, 10, :o1, 1572037200
          tz.transition 2020, 3, :o2, 1585346400
          tz.transition 2020, 10, :o1, 1603490400
          tz.transition 2021, 3, :o2, 1616796000
          tz.transition 2021, 10, :o1, 1635458400
          tz.transition 2022, 3, :o2, 1648245600
          tz.transition 2022, 10, :o1, 1666908000
          tz.transition 2023, 3, :o2, 1679695200
          tz.transition 2023, 10, :o1, 1698357600
          tz.transition 2024, 3, :o2, 1711749600
          tz.transition 2024, 10, :o1, 1729807200
          tz.transition 2025, 3, :o2, 1743199200
          tz.transition 2025, 10, :o1, 1761861600
          tz.transition 2026, 3, :o2, 1774648800
          tz.transition 2026, 10, :o1, 1793311200
          tz.transition 2027, 3, :o2, 1806098400
          tz.transition 2027, 10, :o1, 1824760800
          tz.transition 2028, 3, :o2, 1837548000
          tz.transition 2028, 10, :o1, 1856210400
          tz.transition 2029, 3, :o2, 1868997600
          tz.transition 2029, 10, :o1, 1887660000
          tz.transition 2030, 3, :o2, 1901052000
          tz.transition 2030, 10, :o1, 1919109600
          tz.transition 2031, 3, :o2, 1932501600
          tz.transition 2031, 10, :o1, 1951164000
          tz.transition 2032, 3, :o2, 1963951200
          tz.transition 2032, 10, :o1, 1982613600
          tz.transition 2033, 3, :o2, 1995400800
          tz.transition 2033, 10, :o1, 2014063200
          tz.transition 2034, 3, :o2, 2026850400
          tz.transition 2034, 10, :o1, 2045512800
          tz.transition 2035, 3, :o2, 2058300000
          tz.transition 2035, 10, :o1, 2076962400
          tz.transition 2036, 3, :o2, 2090354400
          tz.transition 2036, 10, :o1, 2109016800
          tz.transition 2037, 3, :o2, 2121804000
          tz.transition 2037, 10, :o1, 2140466400
          tz.transition 2038, 3, :o2, 29586113, 12
          tz.transition 2038, 10, :o1, 29588705, 12
          tz.transition 2039, 3, :o2, 29590481, 12
          tz.transition 2039, 10, :o1, 29593073, 12
          tz.transition 2040, 3, :o2, 29594849, 12
          tz.transition 2040, 10, :o1, 29597441, 12
          tz.transition 2041, 3, :o2, 29599301, 12
          tz.transition 2041, 10, :o1, 29601809, 12
          tz.transition 2042, 3, :o2, 29603669, 12
          tz.transition 2042, 10, :o1, 29606261, 12
          tz.transition 2043, 3, :o2, 29608037, 12
          tz.transition 2043, 10, :o1, 29610629, 12
          tz.transition 2044, 3, :o2, 29612405, 12
          tz.transition 2044, 10, :o1, 29614997, 12
          tz.transition 2045, 3, :o2, 29616773, 12
          tz.transition 2045, 10, :o1, 29619365, 12
          tz.transition 2046, 3, :o2, 29621141, 12
          tz.transition 2046, 10, :o1, 29623733, 12
          tz.transition 2047, 3, :o2, 29625593, 12
          tz.transition 2047, 10, :o1, 29628101, 12
          tz.transition 2048, 3, :o2, 29629961, 12
          tz.transition 2048, 10, :o1, 29632553, 12
          tz.transition 2049, 3, :o2, 29634329, 12
          tz.transition 2049, 10, :o1, 29636921, 12
          tz.transition 2050, 3, :o2, 29638697, 12
          tz.transition 2050, 10, :o1, 29641289, 12
        end
      end
    end
  end
end
