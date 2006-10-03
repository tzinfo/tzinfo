require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Asia
      module Gaza
        include TimezoneDefinition
        
        timezone 'Asia/Gaza' do |tz|
          tz.offset :o0, 8272, 0, :LMT
          tz.offset :o1, 7200, 0, :EET
          tz.offset :o2, 7200, 3600, :EET
          tz.offset :o3, 7200, 3600, :EEST
          tz.offset :o4, 7200, 0, :IST
          tz.offset :o5, 7200, 3600, :IDT
          
          tz.transition 1900, 9, :o1, 13042584383, 5400
          tz.transition 1940, 5, :o2, 29157377, 12
          tz.transition 1942, 10, :o1, 19445315, 8
          tz.transition 1943, 4, :o2, 4861631, 2
          tz.transition 1943, 10, :o1, 19448235, 8
          tz.transition 1944, 3, :o2, 29174177, 12
          tz.transition 1944, 10, :o1, 19451163, 8
          tz.transition 1945, 4, :o2, 29178737, 12
          tz.transition 1945, 10, :o1, 58362251, 24
          tz.transition 1946, 4, :o2, 4863853, 2
          tz.transition 1946, 10, :o1, 19457003, 8
          tz.transition 1957, 5, :o3, 29231621, 12
          tz.transition 1957, 9, :o1, 19488899, 8
          tz.transition 1958, 4, :o3, 29235893, 12
          tz.transition 1958, 9, :o1, 19491819, 8
          tz.transition 1959, 4, :o3, 58480547, 24
          tz.transition 1959, 9, :o1, 4873683, 2
          tz.transition 1960, 4, :o3, 58489331, 24
          tz.transition 1960, 9, :o1, 4874415, 2
          tz.transition 1961, 4, :o3, 58498091, 24
          tz.transition 1961, 9, :o1, 4875145, 2
          tz.transition 1962, 4, :o3, 58506851, 24
          tz.transition 1962, 9, :o1, 4875875, 2
          tz.transition 1963, 4, :o3, 58515611, 24
          tz.transition 1963, 9, :o1, 4876605, 2
          tz.transition 1964, 4, :o3, 58524395, 24
          tz.transition 1964, 9, :o1, 4877337, 2
          tz.transition 1965, 4, :o3, 58533155, 24
          tz.transition 1965, 9, :o1, 4878067, 2
          tz.transition 1966, 4, :o3, 58541915, 24
          tz.transition 1966, 10, :o1, 4878799, 2
          tz.transition 1967, 4, :o3, 58550675, 24
          tz.transition 1967, 6, :o4, 19517171, 8
          tz.transition 1974, 7, :o5, 142380000
          tz.transition 1974, 10, :o4, 150843600
          tz.transition 1975, 4, :o5, 167176800
          tz.transition 1975, 8, :o4, 178664400
          tz.transition 1985, 4, :o5, 482277600
          tz.transition 1985, 9, :o4, 495579600
          tz.transition 1986, 5, :o5, 516751200
          tz.transition 1986, 9, :o4, 526424400
          tz.transition 1987, 4, :o5, 545436000
          tz.transition 1987, 9, :o4, 558478800
          tz.transition 1988, 4, :o5, 576540000
          tz.transition 1988, 9, :o4, 589237200
          tz.transition 1989, 4, :o5, 609890400
          tz.transition 1989, 9, :o4, 620773200
          tz.transition 1990, 3, :o5, 638316000
          tz.transition 1990, 8, :o4, 651618000
          tz.transition 1991, 3, :o5, 669765600
          tz.transition 1991, 8, :o4, 683672400
          tz.transition 1992, 3, :o5, 701820000
          tz.transition 1992, 9, :o4, 715726800
          tz.transition 1993, 4, :o5, 733701600
          tz.transition 1993, 9, :o4, 747176400
          tz.transition 1994, 3, :o5, 765151200
          tz.transition 1994, 8, :o4, 778021200
          tz.transition 1995, 3, :o5, 796600800
          tz.transition 1995, 9, :o4, 810075600
          tz.transition 1995, 12, :o1, 820447200
          tz.transition 1996, 4, :o3, 828655200
          tz.transition 1996, 9, :o1, 843170400
          tz.transition 1997, 4, :o3, 860104800
          tz.transition 1997, 9, :o1, 874620000
          tz.transition 1998, 4, :o3, 891554400
          tz.transition 1998, 9, :o1, 906069600
          tz.transition 1999, 4, :o3, 924213600
          tz.transition 1999, 10, :o1, 939934800
          tz.transition 2000, 4, :o3, 956268000
          tz.transition 2000, 10, :o1, 971989200
          tz.transition 2001, 4, :o3, 987717600
          tz.transition 2001, 10, :o1, 1003438800
          tz.transition 2002, 4, :o3, 1019167200
          tz.transition 2002, 10, :o1, 1034888400
          tz.transition 2003, 4, :o3, 1050616800
          tz.transition 2003, 10, :o1, 1066338000
          tz.transition 2004, 4, :o3, 1082066400
          tz.transition 2004, 9, :o1, 1096581600
          tz.transition 2005, 4, :o3, 1113516000
          tz.transition 2005, 10, :o1, 1128380400
          tz.transition 2006, 3, :o3, 1143842400
          tz.transition 2006, 9, :o1, 1158872400
          tz.transition 2007, 3, :o3, 1175378400
          tz.transition 2007, 10, :o1, 1192741200
          tz.transition 2008, 3, :o3, 1207000800
          tz.transition 2008, 10, :o1, 1224190800
          tz.transition 2009, 3, :o3, 1238536800
          tz.transition 2009, 10, :o1, 1255640400
          tz.transition 2010, 3, :o3, 1270072800
          tz.transition 2010, 10, :o1, 1287090000
          tz.transition 2011, 3, :o3, 1301608800
          tz.transition 2011, 10, :o1, 1319144400
          tz.transition 2012, 3, :o3, 1333231200
          tz.transition 2012, 10, :o1, 1350594000
          tz.transition 2013, 3, :o3, 1364767200
          tz.transition 2013, 10, :o1, 1382043600
          tz.transition 2014, 3, :o3, 1396303200
          tz.transition 2014, 10, :o1, 1413493200
          tz.transition 2015, 3, :o3, 1427839200
          tz.transition 2015, 10, :o1, 1444942800
          tz.transition 2016, 3, :o3, 1459461600
          tz.transition 2016, 10, :o1, 1476997200
          tz.transition 2017, 3, :o3, 1490997600
          tz.transition 2017, 10, :o1, 1508446800
          tz.transition 2018, 3, :o3, 1522533600
          tz.transition 2018, 10, :o1, 1539896400
          tz.transition 2019, 3, :o3, 1554069600
          tz.transition 2019, 10, :o1, 1571346000
          tz.transition 2020, 3, :o3, 1585692000
          tz.transition 2020, 10, :o1, 1602795600
          tz.transition 2021, 3, :o3, 1617228000
          tz.transition 2021, 10, :o1, 1634245200
          tz.transition 2022, 3, :o3, 1648764000
          tz.transition 2022, 10, :o1, 1666299600
          tz.transition 2023, 3, :o3, 1680300000
          tz.transition 2023, 10, :o1, 1697749200
          tz.transition 2024, 3, :o3, 1711922400
          tz.transition 2024, 10, :o1, 1729198800
          tz.transition 2025, 3, :o3, 1743458400
          tz.transition 2025, 10, :o1, 1760648400
          tz.transition 2026, 3, :o3, 1774994400
          tz.transition 2026, 10, :o1, 1792098000
          tz.transition 2027, 3, :o3, 1806530400
          tz.transition 2027, 10, :o1, 1823547600
          tz.transition 2028, 3, :o3, 1838152800
          tz.transition 2028, 10, :o1, 1855602000
          tz.transition 2029, 3, :o3, 1869688800
          tz.transition 2029, 10, :o1, 1887051600
          tz.transition 2030, 3, :o3, 1901224800
          tz.transition 2030, 10, :o1, 1918501200
          tz.transition 2031, 3, :o3, 1932760800
          tz.transition 2031, 10, :o1, 1949950800
          tz.transition 2032, 3, :o3, 1964383200
          tz.transition 2032, 10, :o1, 1981400400
          tz.transition 2033, 3, :o3, 1995919200
          tz.transition 2033, 10, :o1, 2013454800
          tz.transition 2034, 3, :o3, 2027455200
          tz.transition 2034, 10, :o1, 2044904400
          tz.transition 2035, 3, :o3, 2058991200
          tz.transition 2035, 10, :o1, 2076354000
          tz.transition 2036, 3, :o3, 2090613600
          tz.transition 2036, 10, :o1, 2107803600
          tz.transition 2037, 3, :o3, 2122149600
          tz.transition 2037, 10, :o1, 2139253200
          tz.transition 2038, 3, :o3, 29586173, 12
          tz.transition 2038, 10, :o1, 19725691, 8
          tz.transition 2039, 3, :o3, 29590553, 12
          tz.transition 2039, 10, :o1, 19728659, 8
          tz.transition 2040, 3, :o3, 29594945, 12
          tz.transition 2040, 10, :o1, 19731571, 8
          tz.transition 2041, 3, :o3, 29599325, 12
          tz.transition 2041, 10, :o1, 19734483, 8
          tz.transition 2042, 3, :o3, 29603705, 12
          tz.transition 2042, 10, :o1, 19737395, 8
          tz.transition 2043, 3, :o3, 29608085, 12
          tz.transition 2043, 10, :o1, 19740307, 8
          tz.transition 2044, 3, :o3, 29612477, 12
          tz.transition 2044, 10, :o1, 19743275, 8
          tz.transition 2045, 3, :o3, 29616857, 12
          tz.transition 2045, 10, :o1, 19746187, 8
          tz.transition 2046, 3, :o3, 29621237, 12
          tz.transition 2046, 10, :o1, 19749099, 8
          tz.transition 2047, 3, :o3, 29625617, 12
          tz.transition 2047, 10, :o1, 19752011, 8
          tz.transition 2048, 3, :o3, 29630009, 12
          tz.transition 2048, 10, :o1, 19754923, 8
          tz.transition 2049, 3, :o3, 29634389, 12
          tz.transition 2049, 10, :o1, 19757835, 8
          tz.transition 2050, 3, :o3, 29638769, 12
          tz.transition 2050, 10, :o1, 19760803, 8
        end
      end
    end
  end
end
