require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Pacific
      module Auckland
        include TimezoneDefinition
        
        timezone 'Pacific/Auckland' do |tz|
          tz.offset :o0, 41944, 0, :LMT
          tz.offset :o1, 41400, 0, :NZMT
          tz.offset :o2, 41400, 3600, :NZST
          tz.offset :o3, 41400, 1800, :NZST
          tz.offset :o4, 43200, 0, :NZST
          tz.offset :o5, 43200, 3600, :NZDT
          
          tz.transition 1868, 11, :o1, 25959290557, 10800
          tz.transition 1927, 11, :o2, 116409125, 48
          tz.transition 1928, 3, :o1, 38804945, 16
          tz.transition 1928, 10, :o3, 116425589, 48
          tz.transition 1929, 3, :o1, 29108245, 12
          tz.transition 1929, 10, :o3, 116443061, 48
          tz.transition 1930, 3, :o1, 29112613, 12
          tz.transition 1930, 10, :o3, 116460533, 48
          tz.transition 1931, 3, :o1, 29116981, 12
          tz.transition 1931, 10, :o3, 116478005, 48
          tz.transition 1932, 3, :o1, 29121433, 12
          tz.transition 1932, 10, :o3, 116495477, 48
          tz.transition 1933, 3, :o1, 29125801, 12
          tz.transition 1933, 10, :o3, 116512949, 48
          tz.transition 1934, 4, :o1, 29130673, 12
          tz.transition 1934, 9, :o3, 116530085, 48
          tz.transition 1935, 4, :o1, 29135041, 12
          tz.transition 1935, 9, :o3, 116547557, 48
          tz.transition 1936, 4, :o1, 29139409, 12
          tz.transition 1936, 9, :o3, 116565029, 48
          tz.transition 1937, 4, :o1, 29143777, 12
          tz.transition 1937, 9, :o3, 116582501, 48
          tz.transition 1938, 4, :o1, 29148145, 12
          tz.transition 1938, 9, :o3, 116599973, 48
          tz.transition 1939, 4, :o1, 29152597, 12
          tz.transition 1939, 9, :o3, 116617445, 48
          tz.transition 1940, 4, :o1, 29156965, 12
          tz.transition 1940, 9, :o3, 116635253, 48
          tz.transition 1945, 12, :o4, 2431821, 1
          tz.transition 1974, 11, :o5, 152632800
          tz.transition 1975, 2, :o4, 162309600
          tz.transition 1975, 10, :o5, 183477600
          tz.transition 1976, 3, :o4, 194968800
          tz.transition 1976, 10, :o5, 215532000
          tz.transition 1977, 3, :o4, 226418400
          tz.transition 1977, 10, :o5, 246981600
          tz.transition 1978, 3, :o4, 257868000
          tz.transition 1978, 10, :o5, 278431200
          tz.transition 1979, 3, :o4, 289317600
          tz.transition 1979, 10, :o5, 309880800
          tz.transition 1980, 3, :o4, 320767200
          tz.transition 1980, 10, :o5, 341330400
          tz.transition 1981, 2, :o4, 352216800
          tz.transition 1981, 10, :o5, 372780000
          tz.transition 1982, 3, :o4, 384271200
          tz.transition 1982, 10, :o5, 404834400
          tz.transition 1983, 3, :o4, 415720800
          tz.transition 1983, 10, :o5, 436284000
          tz.transition 1984, 3, :o4, 447170400
          tz.transition 1984, 10, :o5, 467733600
          tz.transition 1985, 3, :o4, 478620000
          tz.transition 1985, 10, :o5, 499183200
          tz.transition 1986, 3, :o4, 510069600
          tz.transition 1986, 10, :o5, 530632800
          tz.transition 1987, 2, :o4, 541519200
          tz.transition 1987, 10, :o5, 562082400
          tz.transition 1988, 3, :o4, 573573600
          tz.transition 1988, 10, :o5, 594136800
          tz.transition 1989, 3, :o4, 605023200
          tz.transition 1989, 10, :o5, 623772000
          tz.transition 1990, 3, :o4, 637682400
          tz.transition 1990, 10, :o5, 655221600
          tz.transition 1991, 3, :o4, 669132000
          tz.transition 1991, 10, :o5, 686671200
          tz.transition 1992, 3, :o4, 700581600
          tz.transition 1992, 10, :o5, 718120800
          tz.transition 1993, 3, :o4, 732636000
          tz.transition 1993, 10, :o5, 749570400
          tz.transition 1994, 3, :o4, 764085600
          tz.transition 1994, 10, :o5, 781020000
          tz.transition 1995, 3, :o4, 795535200
          tz.transition 1995, 9, :o5, 812469600
          tz.transition 1996, 3, :o4, 826984800
          tz.transition 1996, 10, :o5, 844524000
          tz.transition 1997, 3, :o4, 858434400
          tz.transition 1997, 10, :o5, 875973600
          tz.transition 1998, 3, :o4, 889884000
          tz.transition 1998, 10, :o5, 907423200
          tz.transition 1999, 3, :o4, 921938400
          tz.transition 1999, 10, :o5, 938872800
          tz.transition 2000, 3, :o4, 953388000
          tz.transition 2000, 9, :o5, 970322400
          tz.transition 2001, 3, :o4, 984837600
          tz.transition 2001, 10, :o5, 1002376800
          tz.transition 2002, 3, :o4, 1016287200
          tz.transition 2002, 10, :o5, 1033826400
          tz.transition 2003, 3, :o4, 1047736800
          tz.transition 2003, 10, :o5, 1065276000
          tz.transition 2004, 3, :o4, 1079791200
          tz.transition 2004, 10, :o5, 1096725600
          tz.transition 2005, 3, :o4, 1111240800
          tz.transition 2005, 10, :o5, 1128175200
          tz.transition 2006, 3, :o4, 1142690400
          tz.transition 2006, 9, :o5, 1159624800
          tz.transition 2007, 3, :o4, 1174140000
          tz.transition 2007, 10, :o5, 1191679200
          tz.transition 2008, 3, :o4, 1205589600
          tz.transition 2008, 10, :o5, 1223128800
          tz.transition 2009, 3, :o4, 1237039200
          tz.transition 2009, 10, :o5, 1254578400
          tz.transition 2010, 3, :o4, 1269093600
          tz.transition 2010, 10, :o5, 1286028000
          tz.transition 2011, 3, :o4, 1300543200
          tz.transition 2011, 10, :o5, 1317477600
          tz.transition 2012, 3, :o4, 1331992800
          tz.transition 2012, 10, :o5, 1349532000
          tz.transition 2013, 3, :o4, 1363442400
          tz.transition 2013, 10, :o5, 1380981600
          tz.transition 2014, 3, :o4, 1394892000
          tz.transition 2014, 10, :o5, 1412431200
          tz.transition 2015, 3, :o4, 1426341600
          tz.transition 2015, 10, :o5, 1443880800
          tz.transition 2016, 3, :o4, 1458396000
          tz.transition 2016, 10, :o5, 1475330400
          tz.transition 2017, 3, :o4, 1489845600
          tz.transition 2017, 9, :o5, 1506780000
          tz.transition 2018, 3, :o4, 1521295200
          tz.transition 2018, 10, :o5, 1538834400
          tz.transition 2019, 3, :o4, 1552744800
          tz.transition 2019, 10, :o5, 1570284000
          tz.transition 2020, 3, :o4, 1584194400
          tz.transition 2020, 10, :o5, 1601733600
          tz.transition 2021, 3, :o4, 1616248800
          tz.transition 2021, 10, :o5, 1633183200
          tz.transition 2022, 3, :o4, 1647698400
          tz.transition 2022, 10, :o5, 1664632800
          tz.transition 2023, 3, :o4, 1679148000
          tz.transition 2023, 9, :o5, 1696082400
          tz.transition 2024, 3, :o4, 1710597600
          tz.transition 2024, 10, :o5, 1728136800
          tz.transition 2025, 3, :o4, 1742047200
          tz.transition 2025, 10, :o5, 1759586400
          tz.transition 2026, 3, :o4, 1773496800
          tz.transition 2026, 10, :o5, 1791036000
          tz.transition 2027, 3, :o4, 1805551200
          tz.transition 2027, 10, :o5, 1822485600
          tz.transition 2028, 3, :o4, 1837000800
          tz.transition 2028, 9, :o5, 1853935200
          tz.transition 2029, 3, :o4, 1868450400
          tz.transition 2029, 10, :o5, 1885989600
          tz.transition 2030, 3, :o4, 1899900000
          tz.transition 2030, 10, :o5, 1917439200
          tz.transition 2031, 3, :o4, 1931349600
          tz.transition 2031, 10, :o5, 1948888800
          tz.transition 2032, 3, :o4, 1963404000
          tz.transition 2032, 10, :o5, 1980338400
          tz.transition 2033, 3, :o4, 1994853600
          tz.transition 2033, 10, :o5, 2011788000
          tz.transition 2034, 3, :o4, 2026303200
          tz.transition 2034, 9, :o5, 2043237600
          tz.transition 2035, 3, :o4, 2057752800
          tz.transition 2035, 10, :o5, 2075292000
          tz.transition 2036, 3, :o4, 2089202400
          tz.transition 2036, 10, :o5, 2106741600
          tz.transition 2037, 3, :o4, 2120652000
          tz.transition 2037, 10, :o5, 2138191200
          tz.transition 2038, 3, :o4, 29586037, 12
          tz.transition 2038, 10, :o5, 29588389, 12
          tz.transition 2039, 3, :o4, 29590405, 12
          tz.transition 2039, 10, :o5, 29592757, 12
          tz.transition 2040, 3, :o4, 29594773, 12
          tz.transition 2040, 10, :o5, 29597209, 12
          tz.transition 2041, 3, :o4, 29599141, 12
          tz.transition 2041, 10, :o5, 29601577, 12
          tz.transition 2042, 3, :o4, 29603509, 12
          tz.transition 2042, 10, :o5, 29605945, 12
          tz.transition 2043, 3, :o4, 29607877, 12
          tz.transition 2043, 10, :o5, 29610313, 12
          tz.transition 2044, 3, :o4, 29612329, 12
          tz.transition 2044, 10, :o5, 29614681, 12
          tz.transition 2045, 3, :o4, 29616697, 12
          tz.transition 2045, 9, :o5, 29619049, 12
          tz.transition 2046, 3, :o4, 29621065, 12
          tz.transition 2046, 10, :o5, 29623501, 12
          tz.transition 2047, 3, :o4, 29625433, 12
          tz.transition 2047, 10, :o5, 29627869, 12
          tz.transition 2048, 3, :o4, 29629801, 12
          tz.transition 2048, 10, :o5, 29632237, 12
          tz.transition 2049, 3, :o4, 29634253, 12
          tz.transition 2049, 10, :o5, 29636605, 12
          tz.transition 2050, 3, :o4, 29638621, 12
        end
      end
    end
  end
end
