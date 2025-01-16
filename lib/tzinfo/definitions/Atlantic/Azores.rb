# encoding: UTF-8

module TZInfo
  module Definitions
    module Atlantic
      module Azores
        include TimezoneDefinition
        
        timezone 'Atlantic/Azores' do |tz|
          tz.offset :o0, -6160, 0, :LMT
          tz.offset :o1, -6872, 0, :HMT
          tz.offset :o2, -7200, 0, :'-02'
          tz.offset :o3, -7200, 3600, :'-01'
          tz.offset :o4, -7200, 7200, :'+00'
          tz.offset :o5, -3600, 0, :'-01'
          tz.offset :o6, -3600, 3600, :'+00'
          tz.offset :o7, 0, 0, :WET
          tz.offset :o8, 0, 3600, :WEST
          
          tz.transition 1884, 1, :o1, 2601910697, 1080
          tz.transition 1912, 1, :o2, 29032831, 12
          tz.transition 1916, 6, :o3, 58104781, 24
          tz.transition 1916, 11, :o2, 29054023, 12
          tz.transition 1917, 3, :o3, 29055463, 12
          tz.transition 1917, 10, :o2, 58116397, 24
          tz.transition 1918, 3, :o3, 29059843, 12
          tz.transition 1918, 10, :o2, 58125157, 24
          tz.transition 1919, 3, :o3, 29064223, 12
          tz.transition 1919, 10, :o2, 58133917, 24
          tz.transition 1920, 3, :o3, 29068615, 12
          tz.transition 1920, 10, :o2, 58142701, 24
          tz.transition 1921, 3, :o3, 29072995, 12
          tz.transition 1921, 10, :o2, 58151461, 24
          tz.transition 1924, 4, :o3, 58173421, 24
          tz.transition 1924, 10, :o2, 58177525, 24
          tz.transition 1926, 4, :o3, 58190965, 24
          tz.transition 1926, 10, :o2, 58194997, 24
          tz.transition 1927, 4, :o3, 58199533, 24
          tz.transition 1927, 10, :o2, 58203733, 24
          tz.transition 1928, 4, :o3, 58208437, 24
          tz.transition 1928, 10, :o2, 58212637, 24
          tz.transition 1929, 4, :o3, 58217341, 24
          tz.transition 1929, 10, :o2, 58221373, 24
          tz.transition 1931, 4, :o3, 58234813, 24
          tz.transition 1931, 10, :o2, 58238845, 24
          tz.transition 1932, 4, :o3, 58243213, 24
          tz.transition 1932, 10, :o2, 58247581, 24
          tz.transition 1934, 4, :o3, 58260853, 24
          tz.transition 1934, 10, :o2, 58265221, 24
          tz.transition 1935, 3, :o3, 58269421, 24
          tz.transition 1935, 10, :o2, 58273957, 24
          tz.transition 1936, 4, :o3, 58278661, 24
          tz.transition 1936, 10, :o2, 58282693, 24
          tz.transition 1937, 4, :o3, 58287061, 24
          tz.transition 1937, 10, :o2, 58291429, 24
          tz.transition 1938, 3, :o3, 58295629, 24
          tz.transition 1938, 10, :o2, 58300165, 24
          tz.transition 1939, 4, :o3, 58304869, 24
          tz.transition 1939, 11, :o2, 58310077, 24
          tz.transition 1940, 2, :o3, 58312429, 24
          tz.transition 1940, 10, :o2, 58317853, 24
          tz.transition 1941, 4, :o3, 58322173, 24
          tz.transition 1941, 10, :o2, 58326565, 24
          tz.transition 1942, 3, :o3, 58330405, 24
          tz.transition 1942, 4, :o4, 4860951, 2
          tz.transition 1942, 8, :o3, 4861175, 2
          tz.transition 1942, 10, :o2, 58335781, 24
          tz.transition 1943, 3, :o3, 58339141, 24
          tz.transition 1943, 4, :o4, 4861665, 2
          tz.transition 1943, 8, :o3, 4861931, 2
          tz.transition 1943, 10, :o2, 58344685, 24
          tz.transition 1944, 3, :o3, 58347877, 24
          tz.transition 1944, 4, :o4, 4862407, 2
          tz.transition 1944, 8, :o3, 4862659, 2
          tz.transition 1944, 10, :o2, 58353421, 24
          tz.transition 1945, 3, :o3, 58356613, 24
          tz.transition 1945, 4, :o4, 4863135, 2
          tz.transition 1945, 8, :o3, 4863387, 2
          tz.transition 1945, 10, :o2, 58362157, 24
          tz.transition 1946, 4, :o3, 58366021, 24
          tz.transition 1946, 10, :o2, 58370389, 24
          tz.transition 1947, 4, :o3, 7296845, 3
          tz.transition 1947, 10, :o2, 7297391, 3
          tz.transition 1948, 4, :o3, 7297937, 3
          tz.transition 1948, 10, :o2, 7298483, 3
          tz.transition 1949, 4, :o3, 7299029, 3
          tz.transition 1949, 10, :o2, 7299575, 3
          tz.transition 1950, 4, :o3, 7300121, 3
          tz.transition 1950, 10, :o2, 7300667, 3
          tz.transition 1951, 4, :o3, 7301213, 3
          tz.transition 1951, 10, :o2, 7301780, 3
          tz.transition 1952, 4, :o3, 7302326, 3
          tz.transition 1952, 10, :o2, 7302872, 3
          tz.transition 1953, 4, :o3, 7303418, 3
          tz.transition 1953, 10, :o2, 7303964, 3
          tz.transition 1954, 4, :o3, 7304510, 3
          tz.transition 1954, 10, :o2, 7305056, 3
          tz.transition 1955, 4, :o3, 7305602, 3
          tz.transition 1955, 10, :o2, 7306148, 3
          tz.transition 1956, 4, :o3, 7306694, 3
          tz.transition 1956, 10, :o2, 7307261, 3
          tz.transition 1957, 4, :o3, 7307807, 3
          tz.transition 1957, 10, :o2, 7308353, 3
          tz.transition 1958, 4, :o3, 7308899, 3
          tz.transition 1958, 10, :o2, 7309445, 3
          tz.transition 1959, 4, :o3, 7309991, 3
          tz.transition 1959, 10, :o2, 7310537, 3
          tz.transition 1960, 4, :o3, 7311083, 3
          tz.transition 1960, 10, :o2, 7311629, 3
          tz.transition 1961, 4, :o3, 7312175, 3
          tz.transition 1961, 10, :o2, 7312721, 3
          tz.transition 1962, 4, :o3, 7313267, 3
          tz.transition 1962, 10, :o2, 7313834, 3
          tz.transition 1963, 4, :o3, 7314380, 3
          tz.transition 1963, 10, :o2, 7314926, 3
          tz.transition 1964, 4, :o3, 7315472, 3
          tz.transition 1964, 10, :o2, 7316018, 3
          tz.transition 1965, 4, :o3, 7316564, 3
          tz.transition 1965, 10, :o2, 7317110, 3
          tz.transition 1966, 4, :o3, 7317656, 3
          tz.transition 1966, 10, :o5, 7318202, 3
          tz.transition 1982, 3, :o6, 386125200
          tz.transition 1982, 9, :o5, 401850000
          tz.transition 1983, 3, :o6, 417574800
          tz.transition 1983, 9, :o5, 433299600
          tz.transition 1984, 3, :o6, 449024400
          tz.transition 1984, 9, :o5, 465354000
          tz.transition 1985, 3, :o6, 481078800
          tz.transition 1985, 9, :o5, 496803600
          tz.transition 1986, 3, :o6, 512528400
          tz.transition 1986, 9, :o5, 528253200
          tz.transition 1987, 3, :o6, 543978000
          tz.transition 1987, 9, :o5, 559702800
          tz.transition 1988, 3, :o6, 575427600
          tz.transition 1988, 9, :o5, 591152400
          tz.transition 1989, 3, :o6, 606877200
          tz.transition 1989, 9, :o5, 622602000
          tz.transition 1990, 3, :o6, 638326800
          tz.transition 1990, 9, :o5, 654656400
          tz.transition 1991, 3, :o6, 670381200
          tz.transition 1991, 9, :o5, 686106000
          tz.transition 1992, 3, :o6, 701830800
          tz.transition 1992, 9, :o5, 717555600
          tz.transition 1992, 12, :o7, 725421600
          tz.transition 1993, 3, :o8, 733280400
          tz.transition 1993, 6, :o6, 740278800
          tz.transition 1993, 9, :o5, 749005200
          tz.transition 1994, 3, :o6, 764730000
          tz.transition 1994, 9, :o5, 780454800
          tz.transition 1995, 3, :o6, 796179600
          tz.transition 1995, 9, :o5, 811904400
          tz.transition 1996, 3, :o6, 828234000
          tz.transition 1996, 10, :o5, 846378000
          tz.transition 1997, 3, :o6, 859683600
          tz.transition 1997, 10, :o5, 877827600
          tz.transition 1998, 3, :o6, 891133200
          tz.transition 1998, 10, :o5, 909277200
          tz.transition 1999, 3, :o6, 922582800
          tz.transition 1999, 10, :o5, 941331600
          tz.transition 2000, 3, :o6, 954032400
          tz.transition 2000, 10, :o5, 972781200
          tz.transition 2001, 3, :o6, 985482000
          tz.transition 2001, 10, :o5, 1004230800
          tz.transition 2002, 3, :o6, 1017536400
          tz.transition 2002, 10, :o5, 1035680400
          tz.transition 2003, 3, :o6, 1048986000
          tz.transition 2003, 10, :o5, 1067130000
          tz.transition 2004, 3, :o6, 1080435600
          tz.transition 2004, 10, :o5, 1099184400
          tz.transition 2005, 3, :o6, 1111885200
          tz.transition 2005, 10, :o5, 1130634000
          tz.transition 2006, 3, :o6, 1143334800
          tz.transition 2006, 10, :o5, 1162083600
          tz.transition 2007, 3, :o6, 1174784400
          tz.transition 2007, 10, :o5, 1193533200
          tz.transition 2008, 3, :o6, 1206838800
          tz.transition 2008, 10, :o5, 1224982800
          tz.transition 2009, 3, :o6, 1238288400
          tz.transition 2009, 10, :o5, 1256432400
          tz.transition 2010, 3, :o6, 1269738000
          tz.transition 2010, 10, :o5, 1288486800
          tz.transition 2011, 3, :o6, 1301187600
          tz.transition 2011, 10, :o5, 1319936400
          tz.transition 2012, 3, :o6, 1332637200
          tz.transition 2012, 10, :o5, 1351386000
          tz.transition 2013, 3, :o6, 1364691600
          tz.transition 2013, 10, :o5, 1382835600
          tz.transition 2014, 3, :o6, 1396141200
          tz.transition 2014, 10, :o5, 1414285200
          tz.transition 2015, 3, :o6, 1427590800
          tz.transition 2015, 10, :o5, 1445734800
          tz.transition 2016, 3, :o6, 1459040400
          tz.transition 2016, 10, :o5, 1477789200
          tz.transition 2017, 3, :o6, 1490490000
          tz.transition 2017, 10, :o5, 1509238800
          tz.transition 2018, 3, :o6, 1521939600
          tz.transition 2018, 10, :o5, 1540688400
          tz.transition 2019, 3, :o6, 1553994000
          tz.transition 2019, 10, :o5, 1572138000
          tz.transition 2020, 3, :o6, 1585443600
          tz.transition 2020, 10, :o5, 1603587600
          tz.transition 2021, 3, :o6, 1616893200
          tz.transition 2021, 10, :o5, 1635642000
          tz.transition 2022, 3, :o6, 1648342800
          tz.transition 2022, 10, :o5, 1667091600
          tz.transition 2023, 3, :o6, 1679792400
          tz.transition 2023, 10, :o5, 1698541200
          tz.transition 2024, 3, :o6, 1711846800
          tz.transition 2024, 10, :o5, 1729990800
          tz.transition 2025, 3, :o6, 1743296400
          tz.transition 2025, 10, :o5, 1761440400
          tz.transition 2026, 3, :o6, 1774746000
          tz.transition 2026, 10, :o5, 1792890000
          tz.transition 2027, 3, :o6, 1806195600
          tz.transition 2027, 10, :o5, 1824944400
          tz.transition 2028, 3, :o6, 1837645200
          tz.transition 2028, 10, :o5, 1856394000
          tz.transition 2029, 3, :o6, 1869094800
          tz.transition 2029, 10, :o5, 1887843600
          tz.transition 2030, 3, :o6, 1901149200
          tz.transition 2030, 10, :o5, 1919293200
          tz.transition 2031, 3, :o6, 1932598800
          tz.transition 2031, 10, :o5, 1950742800
          tz.transition 2032, 3, :o6, 1964048400
          tz.transition 2032, 10, :o5, 1982797200
          tz.transition 2033, 3, :o6, 1995498000
          tz.transition 2033, 10, :o5, 2014246800
          tz.transition 2034, 3, :o6, 2026947600
          tz.transition 2034, 10, :o5, 2045696400
          tz.transition 2035, 3, :o6, 2058397200
          tz.transition 2035, 10, :o5, 2077146000
          tz.transition 2036, 3, :o6, 2090451600
          tz.transition 2036, 10, :o5, 2108595600
          tz.transition 2037, 3, :o6, 2121901200
          tz.transition 2037, 10, :o5, 2140045200
          tz.transition 2038, 3, :o6, 59172253, 24
          tz.transition 2038, 10, :o5, 59177461, 24
          tz.transition 2039, 3, :o6, 59180989, 24
          tz.transition 2039, 10, :o5, 59186197, 24
          tz.transition 2040, 3, :o6, 59189725, 24
          tz.transition 2040, 10, :o5, 59194933, 24
          tz.transition 2041, 3, :o6, 59198629, 24
          tz.transition 2041, 10, :o5, 59203669, 24
          tz.transition 2042, 3, :o6, 59207365, 24
          tz.transition 2042, 10, :o5, 59212405, 24
          tz.transition 2043, 3, :o6, 59216101, 24
          tz.transition 2043, 10, :o5, 59221141, 24
          tz.transition 2044, 3, :o6, 59224837, 24
          tz.transition 2044, 10, :o5, 59230045, 24
          tz.transition 2045, 3, :o6, 59233573, 24
          tz.transition 2045, 10, :o5, 59238781, 24
          tz.transition 2046, 3, :o6, 59242309, 24
          tz.transition 2046, 10, :o5, 59247517, 24
          tz.transition 2047, 3, :o6, 59251213, 24
          tz.transition 2047, 10, :o5, 59256253, 24
          tz.transition 2048, 3, :o6, 59259949, 24
          tz.transition 2048, 10, :o5, 59264989, 24
          tz.transition 2049, 3, :o6, 59268685, 24
          tz.transition 2049, 10, :o5, 59273893, 24
          tz.transition 2050, 3, :o6, 59277421, 24
          tz.transition 2050, 10, :o5, 59282629, 24
          tz.transition 2051, 3, :o6, 59286157, 24
          tz.transition 2051, 10, :o5, 59291365, 24
          tz.transition 2052, 3, :o6, 59295061, 24
          tz.transition 2052, 10, :o5, 59300101, 24
          tz.transition 2053, 3, :o6, 59303797, 24
          tz.transition 2053, 10, :o5, 59308837, 24
          tz.transition 2054, 3, :o6, 59312533, 24
          tz.transition 2054, 10, :o5, 59317573, 24
          tz.transition 2055, 3, :o6, 59321269, 24
          tz.transition 2055, 10, :o5, 59326477, 24
          tz.transition 2056, 3, :o6, 59330005, 24
          tz.transition 2056, 10, :o5, 59335213, 24
          tz.transition 2057, 3, :o6, 59338741, 24
          tz.transition 2057, 10, :o5, 59343949, 24
          tz.transition 2058, 3, :o6, 59347645, 24
          tz.transition 2058, 10, :o5, 59352685, 24
          tz.transition 2059, 3, :o6, 59356381, 24
          tz.transition 2059, 10, :o5, 59361421, 24
          tz.transition 2060, 3, :o6, 59365117, 24
          tz.transition 2060, 10, :o5, 59370325, 24
          tz.transition 2061, 3, :o6, 59373853, 24
          tz.transition 2061, 10, :o5, 59379061, 24
          tz.transition 2062, 3, :o6, 59382589, 24
          tz.transition 2062, 10, :o5, 59387797, 24
          tz.transition 2063, 3, :o6, 59391325, 24
          tz.transition 2063, 10, :o5, 59396533, 24
          tz.transition 2064, 3, :o6, 59400229, 24
          tz.transition 2064, 10, :o5, 59405269, 24
          tz.transition 2065, 3, :o6, 59408965, 24
          tz.transition 2065, 10, :o5, 59414005, 24
          tz.transition 2066, 3, :o6, 59417701, 24
          tz.transition 2066, 10, :o5, 59422909, 24
          tz.transition 2067, 3, :o6, 59426437, 24
          tz.transition 2067, 10, :o5, 59431645, 24
          tz.transition 2068, 3, :o6, 59435173, 24
          tz.transition 2068, 10, :o5, 59440381, 24
          tz.transition 2069, 3, :o6, 59444077, 24
          tz.transition 2069, 10, :o5, 59449117, 24
          tz.transition 2070, 3, :o6, 59452813, 24
          tz.transition 2070, 10, :o5, 59457853, 24
          tz.transition 2071, 3, :o6, 59461549, 24
          tz.transition 2071, 10, :o5, 59466589, 24
          tz.transition 2072, 3, :o6, 59470285, 24
          tz.transition 2072, 10, :o5, 59475493, 24
          tz.transition 2073, 3, :o6, 59479021, 24
          tz.transition 2073, 10, :o5, 59484229, 24
          tz.transition 2074, 3, :o6, 59487757, 24
          tz.transition 2074, 10, :o5, 59492965, 24
          tz.transition 2075, 3, :o6, 59496661, 24
          tz.transition 2075, 10, :o5, 59501701, 24
        end
      end
    end
  end
end
