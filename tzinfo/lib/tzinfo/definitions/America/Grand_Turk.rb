require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module America
      module Grand_Turk
        include TimezoneDefinition
        
        timezone 'America/Grand_Turk' do |tz|
          tz.offset :o0, -17072, 0, :LMT
          tz.offset :o1, -18432, 0, :KMT
          tz.offset :o2, -18000, 0, :EST
          tz.offset :o3, -18000, 3600, :EDT
          
          tz.transition 1890, 1, :o1, 13021390967, 5400
          tz.transition 1912, 2, :o2, 362915057, 150
          tz.transition 1979, 4, :o3, 294210000
          tz.transition 1979, 10, :o2, 309931200
          tz.transition 1980, 4, :o3, 325659600
          tz.transition 1980, 10, :o2, 341380800
          tz.transition 1981, 4, :o3, 357109200
          tz.transition 1981, 10, :o2, 372830400
          tz.transition 1982, 4, :o3, 388558800
          tz.transition 1982, 10, :o2, 404884800
          tz.transition 1983, 4, :o3, 420008400
          tz.transition 1983, 10, :o2, 436334400
          tz.transition 1984, 4, :o3, 452062800
          tz.transition 1984, 10, :o2, 467784000
          tz.transition 1985, 4, :o3, 483512400
          tz.transition 1985, 10, :o2, 499233600
          tz.transition 1986, 4, :o3, 514962000
          tz.transition 1986, 10, :o2, 530683200
          tz.transition 1987, 4, :o3, 544597200
          tz.transition 1987, 10, :o2, 562132800
          tz.transition 1988, 4, :o3, 576046800
          tz.transition 1988, 10, :o2, 594187200
          tz.transition 1989, 4, :o3, 607496400
          tz.transition 1989, 10, :o2, 625636800
          tz.transition 1990, 4, :o3, 638946000
          tz.transition 1990, 10, :o2, 657086400
          tz.transition 1991, 4, :o3, 671000400
          tz.transition 1991, 10, :o2, 688536000
          tz.transition 1992, 4, :o3, 702450000
          tz.transition 1992, 10, :o2, 719985600
          tz.transition 1993, 4, :o3, 733899600
          tz.transition 1993, 10, :o2, 752040000
          tz.transition 1994, 4, :o3, 765349200
          tz.transition 1994, 10, :o2, 783489600
          tz.transition 1995, 4, :o3, 796798800
          tz.transition 1995, 10, :o2, 814939200
          tz.transition 1996, 4, :o3, 828853200
          tz.transition 1996, 10, :o2, 846388800
          tz.transition 1997, 4, :o3, 860302800
          tz.transition 1997, 10, :o2, 877838400
          tz.transition 1998, 4, :o3, 891752400
          tz.transition 1998, 10, :o2, 909288000
          tz.transition 1999, 4, :o3, 923202000
          tz.transition 1999, 10, :o2, 941342400
          tz.transition 2000, 4, :o3, 954651600
          tz.transition 2000, 10, :o2, 972792000
          tz.transition 2001, 4, :o3, 986101200
          tz.transition 2001, 10, :o2, 1004241600
          tz.transition 2002, 4, :o3, 1018155600
          tz.transition 2002, 10, :o2, 1035691200
          tz.transition 2003, 4, :o3, 1049605200
          tz.transition 2003, 10, :o2, 1067140800
          tz.transition 2004, 4, :o3, 1081054800
          tz.transition 2004, 10, :o2, 1099195200
          tz.transition 2005, 4, :o3, 1112504400
          tz.transition 2005, 10, :o2, 1130644800
          tz.transition 2006, 4, :o3, 1143954000
          tz.transition 2006, 10, :o2, 1162094400
          tz.transition 2007, 4, :o3, 1175403600
          tz.transition 2007, 10, :o2, 1193544000
          tz.transition 2008, 4, :o3, 1207458000
          tz.transition 2008, 10, :o2, 1224993600
          tz.transition 2009, 4, :o3, 1238907600
          tz.transition 2009, 10, :o2, 1256443200
          tz.transition 2010, 4, :o3, 1270357200
          tz.transition 2010, 10, :o2, 1288497600
          tz.transition 2011, 4, :o3, 1301806800
          tz.transition 2011, 10, :o2, 1319947200
          tz.transition 2012, 4, :o3, 1333256400
          tz.transition 2012, 10, :o2, 1351396800
          tz.transition 2013, 4, :o3, 1365310800
          tz.transition 2013, 10, :o2, 1382846400
          tz.transition 2014, 4, :o3, 1396760400
          tz.transition 2014, 10, :o2, 1414296000
          tz.transition 2015, 4, :o3, 1428210000
          tz.transition 2015, 10, :o2, 1445745600
          tz.transition 2016, 4, :o3, 1459659600
          tz.transition 2016, 10, :o2, 1477800000
          tz.transition 2017, 4, :o3, 1491109200
          tz.transition 2017, 10, :o2, 1509249600
          tz.transition 2018, 4, :o3, 1522558800
          tz.transition 2018, 10, :o2, 1540699200
          tz.transition 2019, 4, :o3, 1554613200
          tz.transition 2019, 10, :o2, 1572148800
          tz.transition 2020, 4, :o3, 1586062800
          tz.transition 2020, 10, :o2, 1603598400
          tz.transition 2021, 4, :o3, 1617512400
          tz.transition 2021, 10, :o2, 1635652800
          tz.transition 2022, 4, :o3, 1648962000
          tz.transition 2022, 10, :o2, 1667102400
          tz.transition 2023, 4, :o3, 1680411600
          tz.transition 2023, 10, :o2, 1698552000
          tz.transition 2024, 4, :o3, 1712466000
          tz.transition 2024, 10, :o2, 1730001600
          tz.transition 2025, 4, :o3, 1743915600
          tz.transition 2025, 10, :o2, 1761451200
          tz.transition 2026, 4, :o3, 1775365200
          tz.transition 2026, 10, :o2, 1792900800
          tz.transition 2027, 4, :o3, 1806814800
          tz.transition 2027, 10, :o2, 1824955200
          tz.transition 2028, 4, :o3, 1838264400
          tz.transition 2028, 10, :o2, 1856404800
          tz.transition 2029, 4, :o3, 1869714000
          tz.transition 2029, 10, :o2, 1887854400
          tz.transition 2030, 4, :o3, 1901768400
          tz.transition 2030, 10, :o2, 1919304000
          tz.transition 2031, 4, :o3, 1933218000
          tz.transition 2031, 10, :o2, 1950753600
          tz.transition 2032, 4, :o3, 1964667600
          tz.transition 2032, 10, :o2, 1982808000
          tz.transition 2033, 4, :o3, 1996117200
          tz.transition 2033, 10, :o2, 2014257600
          tz.transition 2034, 4, :o3, 2027566800
          tz.transition 2034, 10, :o2, 2045707200
          tz.transition 2035, 4, :o3, 2059016400
          tz.transition 2035, 10, :o2, 2077156800
          tz.transition 2036, 4, :o3, 2091070800
          tz.transition 2036, 10, :o2, 2108606400
          tz.transition 2037, 4, :o3, 2122520400
          tz.transition 2037, 10, :o2, 2140056000
          tz.transition 2038, 4, :o3, 59172425, 24
          tz.transition 2038, 10, :o2, 7397183, 3
          tz.transition 2039, 4, :o3, 59181161, 24
          tz.transition 2039, 10, :o2, 7398275, 3
          tz.transition 2040, 4, :o3, 59189897, 24
          tz.transition 2040, 10, :o2, 7399367, 3
          tz.transition 2041, 4, :o3, 59198801, 24
          tz.transition 2041, 10, :o2, 7400459, 3
          tz.transition 2042, 4, :o3, 59207537, 24
          tz.transition 2042, 10, :o2, 7401551, 3
          tz.transition 2043, 4, :o3, 59216273, 24
          tz.transition 2043, 10, :o2, 7402643, 3
          tz.transition 2044, 4, :o3, 59225009, 24
          tz.transition 2044, 10, :o2, 7403756, 3
          tz.transition 2045, 4, :o3, 59233745, 24
          tz.transition 2045, 10, :o2, 7404848, 3
          tz.transition 2046, 4, :o3, 59242481, 24
          tz.transition 2046, 10, :o2, 7405940, 3
          tz.transition 2047, 4, :o3, 59251385, 24
          tz.transition 2047, 10, :o2, 7407032, 3
          tz.transition 2048, 4, :o3, 59260121, 24
          tz.transition 2048, 10, :o2, 7408124, 3
          tz.transition 2049, 4, :o3, 59268857, 24
          tz.transition 2049, 10, :o2, 7409237, 3
          tz.transition 2050, 4, :o3, 59277593, 24
          tz.transition 2050, 10, :o2, 7410329, 3
        end
      end
    end
  end
end
