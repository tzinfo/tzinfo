require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions #:nodoc:
    module Asia #:nodoc:
      module Gaza #:nodoc:
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
          tz.transition 2006, 4, :o3, 1145570400
          tz.transition 2006, 10, :o1, 1159916400
          tz.transition 2007, 4, :o3, 1177020000
          tz.transition 2007, 10, :o1, 1191452400
          tz.transition 2008, 4, :o3, 1208469600
          tz.transition 2008, 10, :o1, 1223074800
          tz.transition 2009, 4, :o3, 1239919200
          tz.transition 2009, 10, :o1, 1254610800
          tz.transition 2010, 4, :o3, 1271368800
          tz.transition 2010, 10, :o1, 1286146800
          tz.transition 2011, 4, :o3, 1302818400
          tz.transition 2011, 10, :o1, 1317682800
          tz.transition 2012, 4, :o3, 1334872800
          tz.transition 2012, 10, :o1, 1349305200
          tz.transition 2013, 4, :o3, 1366322400
          tz.transition 2013, 10, :o1, 1380841200
          tz.transition 2014, 4, :o3, 1397772000
          tz.transition 2014, 10, :o1, 1412377200
          tz.transition 2015, 4, :o3, 1429221600
          tz.transition 2015, 10, :o1, 1443913200
          tz.transition 2016, 4, :o3, 1460671200
          tz.transition 2016, 10, :o1, 1475535600
          tz.transition 2017, 4, :o3, 1492725600
          tz.transition 2017, 10, :o1, 1507071600
          tz.transition 2018, 4, :o3, 1524175200
          tz.transition 2018, 10, :o1, 1538607600
          tz.transition 2019, 4, :o3, 1555624800
          tz.transition 2019, 10, :o1, 1570143600
          tz.transition 2020, 4, :o3, 1587074400
          tz.transition 2020, 10, :o1, 1601766000
          tz.transition 2021, 4, :o3, 1618524000
          tz.transition 2021, 10, :o1, 1633302000
          tz.transition 2022, 4, :o3, 1649973600
          tz.transition 2022, 10, :o1, 1664838000
          tz.transition 2023, 4, :o3, 1682028000
          tz.transition 2023, 10, :o1, 1696374000
          tz.transition 2024, 4, :o3, 1713477600
          tz.transition 2024, 10, :o1, 1727996400
          tz.transition 2025, 4, :o3, 1744927200
          tz.transition 2025, 10, :o1, 1759532400
          tz.transition 2026, 4, :o3, 1776376800
          tz.transition 2026, 10, :o1, 1791068400
          tz.transition 2027, 4, :o3, 1807826400
          tz.transition 2027, 10, :o1, 1822604400
          tz.transition 2028, 4, :o3, 1839880800
          tz.transition 2028, 10, :o1, 1854226800
          tz.transition 2029, 4, :o3, 1871330400
          tz.transition 2029, 10, :o1, 1885762800
          tz.transition 2030, 4, :o3, 1902780000
          tz.transition 2030, 10, :o1, 1917298800
          tz.transition 2031, 4, :o3, 1934229600
          tz.transition 2031, 10, :o1, 1948834800
          tz.transition 2032, 4, :o3, 1965679200
          tz.transition 2032, 10, :o1, 1980457200
          tz.transition 2033, 4, :o3, 1997128800
          tz.transition 2033, 10, :o1, 2011993200
          tz.transition 2034, 4, :o3, 2029183200
          tz.transition 2034, 10, :o1, 2043529200
          tz.transition 2035, 4, :o3, 2060632800
          tz.transition 2035, 10, :o1, 2075065200
          tz.transition 2036, 4, :o3, 2092082400
          tz.transition 2036, 10, :o1, 2106687600
          tz.transition 2037, 4, :o3, 2123532000
          tz.transition 2037, 10, :o1, 2138223600
          tz.transition 2038, 4, :o3, 29586353, 12
          tz.transition 2038, 10, :o1, 59176811, 24
          tz.transition 2039, 4, :o3, 29590721, 12
          tz.transition 2039, 10, :o1, 59185571, 24
          tz.transition 2040, 4, :o3, 29595173, 12
          tz.transition 2040, 10, :o1, 59194355, 24
          tz.transition 2041, 4, :o3, 29599541, 12
          tz.transition 2041, 10, :o1, 59203115, 24
          tz.transition 2042, 4, :o3, 29603909, 12
          tz.transition 2042, 10, :o1, 59211875, 24
          tz.transition 2043, 4, :o3, 29608277, 12
          tz.transition 2043, 10, :o1, 59220635, 24
          tz.transition 2044, 4, :o3, 29612645, 12
          tz.transition 2044, 10, :o1, 59229419, 24
          tz.transition 2045, 4, :o3, 29617097, 12
          tz.transition 2045, 10, :o1, 59238179, 24
          tz.transition 2046, 4, :o3, 29621465, 12
          tz.transition 2046, 10, :o1, 59246939, 24
          tz.transition 2047, 4, :o3, 29625833, 12
          tz.transition 2047, 10, :o1, 59255699, 24
          tz.transition 2048, 4, :o3, 29630201, 12
          tz.transition 2048, 10, :o1, 59264483, 24
          tz.transition 2049, 4, :o3, 29634569, 12
          tz.transition 2049, 10, :o1, 59273243, 24
          tz.transition 2050, 4, :o3, 29638937, 12
          tz.transition 2050, 10, :o1, 59282003, 24
        end
      end
    end
  end
end
