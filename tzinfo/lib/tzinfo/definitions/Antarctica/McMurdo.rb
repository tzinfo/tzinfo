require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Antarctica
      module McMurdo
        include TimezoneDefinition
        
        timezone 'Antarctica/McMurdo' do |tz|
          tz.offset :o0, 0, 0, :zzz
          tz.offset :o1, 43200, 0, :NZST
          tz.offset :o2, 43200, 3600, :NZDT
          
          tz.transition 1956, 1, :o1, 4870947, 2
          tz.transition 1974, 11, :o2, 152632800
          tz.transition 1975, 2, :o1, 162309600
          tz.transition 1975, 10, :o2, 183477600
          tz.transition 1976, 3, :o1, 194968800
          tz.transition 1976, 10, :o2, 215532000
          tz.transition 1977, 3, :o1, 226418400
          tz.transition 1977, 10, :o2, 246981600
          tz.transition 1978, 3, :o1, 257868000
          tz.transition 1978, 10, :o2, 278431200
          tz.transition 1979, 3, :o1, 289317600
          tz.transition 1979, 10, :o2, 309880800
          tz.transition 1980, 3, :o1, 320767200
          tz.transition 1980, 10, :o2, 341330400
          tz.transition 1981, 2, :o1, 352216800
          tz.transition 1981, 10, :o2, 372780000
          tz.transition 1982, 3, :o1, 384271200
          tz.transition 1982, 10, :o2, 404834400
          tz.transition 1983, 3, :o1, 415720800
          tz.transition 1983, 10, :o2, 436284000
          tz.transition 1984, 3, :o1, 447170400
          tz.transition 1984, 10, :o2, 467733600
          tz.transition 1985, 3, :o1, 478620000
          tz.transition 1985, 10, :o2, 499183200
          tz.transition 1986, 3, :o1, 510069600
          tz.transition 1986, 10, :o2, 530632800
          tz.transition 1987, 2, :o1, 541519200
          tz.transition 1987, 10, :o2, 562082400
          tz.transition 1988, 3, :o1, 573573600
          tz.transition 1988, 10, :o2, 594136800
          tz.transition 1989, 3, :o1, 605023200
          tz.transition 1989, 10, :o2, 623772000
          tz.transition 1990, 3, :o1, 637682400
          tz.transition 1990, 10, :o2, 655221600
          tz.transition 1991, 3, :o1, 669132000
          tz.transition 1991, 10, :o2, 686671200
          tz.transition 1992, 3, :o1, 700581600
          tz.transition 1992, 10, :o2, 718120800
          tz.transition 1993, 3, :o1, 732636000
          tz.transition 1993, 10, :o2, 749570400
          tz.transition 1994, 3, :o1, 764085600
          tz.transition 1994, 10, :o2, 781020000
          tz.transition 1995, 3, :o1, 795535200
          tz.transition 1995, 9, :o2, 812469600
          tz.transition 1996, 3, :o1, 826984800
          tz.transition 1996, 10, :o2, 844524000
          tz.transition 1997, 3, :o1, 858434400
          tz.transition 1997, 10, :o2, 875973600
          tz.transition 1998, 3, :o1, 889884000
          tz.transition 1998, 10, :o2, 907423200
          tz.transition 1999, 3, :o1, 921938400
          tz.transition 1999, 10, :o2, 938872800
          tz.transition 2000, 3, :o1, 953388000
          tz.transition 2000, 9, :o2, 970322400
          tz.transition 2001, 3, :o1, 984837600
          tz.transition 2001, 10, :o2, 1002376800
          tz.transition 2002, 3, :o1, 1016287200
          tz.transition 2002, 10, :o2, 1033826400
          tz.transition 2003, 3, :o1, 1047736800
          tz.transition 2003, 10, :o2, 1065276000
          tz.transition 2004, 3, :o1, 1079791200
          tz.transition 2004, 10, :o2, 1096725600
          tz.transition 2005, 3, :o1, 1111240800
          tz.transition 2005, 10, :o2, 1128175200
          tz.transition 2006, 3, :o1, 1142690400
          tz.transition 2006, 9, :o2, 1159624800
          tz.transition 2007, 3, :o1, 1174140000
          tz.transition 2007, 10, :o2, 1191679200
          tz.transition 2008, 3, :o1, 1205589600
          tz.transition 2008, 10, :o2, 1223128800
          tz.transition 2009, 3, :o1, 1237039200
          tz.transition 2009, 10, :o2, 1254578400
          tz.transition 2010, 3, :o1, 1269093600
          tz.transition 2010, 10, :o2, 1286028000
          tz.transition 2011, 3, :o1, 1300543200
          tz.transition 2011, 10, :o2, 1317477600
          tz.transition 2012, 3, :o1, 1331992800
          tz.transition 2012, 10, :o2, 1349532000
          tz.transition 2013, 3, :o1, 1363442400
          tz.transition 2013, 10, :o2, 1380981600
          tz.transition 2014, 3, :o1, 1394892000
          tz.transition 2014, 10, :o2, 1412431200
          tz.transition 2015, 3, :o1, 1426341600
          tz.transition 2015, 10, :o2, 1443880800
          tz.transition 2016, 3, :o1, 1458396000
          tz.transition 2016, 10, :o2, 1475330400
          tz.transition 2017, 3, :o1, 1489845600
          tz.transition 2017, 9, :o2, 1506780000
          tz.transition 2018, 3, :o1, 1521295200
          tz.transition 2018, 10, :o2, 1538834400
          tz.transition 2019, 3, :o1, 1552744800
          tz.transition 2019, 10, :o2, 1570284000
          tz.transition 2020, 3, :o1, 1584194400
          tz.transition 2020, 10, :o2, 1601733600
          tz.transition 2021, 3, :o1, 1616248800
          tz.transition 2021, 10, :o2, 1633183200
          tz.transition 2022, 3, :o1, 1647698400
          tz.transition 2022, 10, :o2, 1664632800
          tz.transition 2023, 3, :o1, 1679148000
          tz.transition 2023, 9, :o2, 1696082400
          tz.transition 2024, 3, :o1, 1710597600
          tz.transition 2024, 10, :o2, 1728136800
          tz.transition 2025, 3, :o1, 1742047200
          tz.transition 2025, 10, :o2, 1759586400
          tz.transition 2026, 3, :o1, 1773496800
          tz.transition 2026, 10, :o2, 1791036000
          tz.transition 2027, 3, :o1, 1805551200
          tz.transition 2027, 10, :o2, 1822485600
          tz.transition 2028, 3, :o1, 1837000800
          tz.transition 2028, 9, :o2, 1853935200
          tz.transition 2029, 3, :o1, 1868450400
          tz.transition 2029, 10, :o2, 1885989600
          tz.transition 2030, 3, :o1, 1899900000
          tz.transition 2030, 10, :o2, 1917439200
          tz.transition 2031, 3, :o1, 1931349600
          tz.transition 2031, 10, :o2, 1948888800
          tz.transition 2032, 3, :o1, 1963404000
          tz.transition 2032, 10, :o2, 1980338400
          tz.transition 2033, 3, :o1, 1994853600
          tz.transition 2033, 10, :o2, 2011788000
          tz.transition 2034, 3, :o1, 2026303200
          tz.transition 2034, 9, :o2, 2043237600
          tz.transition 2035, 3, :o1, 2057752800
          tz.transition 2035, 10, :o2, 2075292000
          tz.transition 2036, 3, :o1, 2089202400
          tz.transition 2036, 10, :o2, 2106741600
          tz.transition 2037, 3, :o1, 2120652000
          tz.transition 2037, 10, :o2, 2138191200
          tz.transition 2038, 3, :o1, 29586037, 12
          tz.transition 2038, 10, :o2, 29588389, 12
          tz.transition 2039, 3, :o1, 29590405, 12
          tz.transition 2039, 10, :o2, 29592757, 12
          tz.transition 2040, 3, :o1, 29594773, 12
          tz.transition 2040, 10, :o2, 29597209, 12
          tz.transition 2041, 3, :o1, 29599141, 12
          tz.transition 2041, 10, :o2, 29601577, 12
          tz.transition 2042, 3, :o1, 29603509, 12
          tz.transition 2042, 10, :o2, 29605945, 12
          tz.transition 2043, 3, :o1, 29607877, 12
          tz.transition 2043, 10, :o2, 29610313, 12
          tz.transition 2044, 3, :o1, 29612329, 12
          tz.transition 2044, 10, :o2, 29614681, 12
          tz.transition 2045, 3, :o1, 29616697, 12
          tz.transition 2045, 9, :o2, 29619049, 12
          tz.transition 2046, 3, :o1, 29621065, 12
          tz.transition 2046, 10, :o2, 29623501, 12
          tz.transition 2047, 3, :o1, 29625433, 12
          tz.transition 2047, 10, :o2, 29627869, 12
          tz.transition 2048, 3, :o1, 29629801, 12
          tz.transition 2048, 10, :o2, 29632237, 12
          tz.transition 2049, 3, :o1, 29634253, 12
          tz.transition 2049, 10, :o2, 29636605, 12
          tz.transition 2050, 3, :o1, 29638621, 12
        end
      end
    end
  end
end
