# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Chatham
        include TimezoneDefinition
        
        timezone 'Pacific/Chatham' do |tz|
          tz.offset :o0, 44028, 0, :LMT
          tz.offset :o1, 44100, 0, :'+1215'
          tz.offset :o2, 45900, 0, :'+1245'
          tz.offset :o3, 45900, 3600, :'+1345'
          
          tz.transition 1868, 11, :o1, 5768731177, 2400
          tz.transition 1945, 12, :o2, 233454815, 96
          tz.transition 1974, 11, :o3, 152632800
          tz.transition 1975, 2, :o2, 162309600
          tz.transition 1975, 10, :o3, 183477600
          tz.transition 1976, 3, :o2, 194968800
          tz.transition 1976, 10, :o3, 215532000
          tz.transition 1977, 3, :o2, 226418400
          tz.transition 1977, 10, :o3, 246981600
          tz.transition 1978, 3, :o2, 257868000
          tz.transition 1978, 10, :o3, 278431200
          tz.transition 1979, 3, :o2, 289317600
          tz.transition 1979, 10, :o3, 309880800
          tz.transition 1980, 3, :o2, 320767200
          tz.transition 1980, 10, :o3, 341330400
          tz.transition 1981, 2, :o2, 352216800
          tz.transition 1981, 10, :o3, 372780000
          tz.transition 1982, 3, :o2, 384271200
          tz.transition 1982, 10, :o3, 404834400
          tz.transition 1983, 3, :o2, 415720800
          tz.transition 1983, 10, :o3, 436284000
          tz.transition 1984, 3, :o2, 447170400
          tz.transition 1984, 10, :o3, 467733600
          tz.transition 1985, 3, :o2, 478620000
          tz.transition 1985, 10, :o3, 499183200
          tz.transition 1986, 3, :o2, 510069600
          tz.transition 1986, 10, :o3, 530632800
          tz.transition 1987, 2, :o2, 541519200
          tz.transition 1987, 10, :o3, 562082400
          tz.transition 1988, 3, :o2, 573573600
          tz.transition 1988, 10, :o3, 594136800
          tz.transition 1989, 3, :o2, 605023200
          tz.transition 1989, 10, :o3, 623772000
          tz.transition 1990, 3, :o2, 637682400
          tz.transition 1990, 10, :o3, 655221600
          tz.transition 1991, 3, :o2, 669132000
          tz.transition 1991, 10, :o3, 686671200
          tz.transition 1992, 3, :o2, 700581600
          tz.transition 1992, 10, :o3, 718120800
          tz.transition 1993, 3, :o2, 732636000
          tz.transition 1993, 10, :o3, 749570400
          tz.transition 1994, 3, :o2, 764085600
          tz.transition 1994, 10, :o3, 781020000
          tz.transition 1995, 3, :o2, 795535200
          tz.transition 1995, 9, :o3, 812469600
          tz.transition 1996, 3, :o2, 826984800
          tz.transition 1996, 10, :o3, 844524000
          tz.transition 1997, 3, :o2, 858434400
          tz.transition 1997, 10, :o3, 875973600
          tz.transition 1998, 3, :o2, 889884000
          tz.transition 1998, 10, :o3, 907423200
          tz.transition 1999, 3, :o2, 921938400
          tz.transition 1999, 10, :o3, 938872800
          tz.transition 2000, 3, :o2, 953388000
          tz.transition 2000, 9, :o3, 970322400
          tz.transition 2001, 3, :o2, 984837600
          tz.transition 2001, 10, :o3, 1002376800
          tz.transition 2002, 3, :o2, 1016287200
          tz.transition 2002, 10, :o3, 1033826400
          tz.transition 2003, 3, :o2, 1047736800
          tz.transition 2003, 10, :o3, 1065276000
          tz.transition 2004, 3, :o2, 1079791200
          tz.transition 2004, 10, :o3, 1096725600
          tz.transition 2005, 3, :o2, 1111240800
          tz.transition 2005, 10, :o3, 1128175200
          tz.transition 2006, 3, :o2, 1142690400
          tz.transition 2006, 9, :o3, 1159624800
          tz.transition 2007, 3, :o2, 1174140000
          tz.transition 2007, 9, :o3, 1191074400
          tz.transition 2008, 4, :o2, 1207404000
          tz.transition 2008, 9, :o3, 1222524000
          tz.transition 2009, 4, :o2, 1238853600
          tz.transition 2009, 9, :o3, 1253973600
          tz.transition 2010, 4, :o2, 1270303200
          tz.transition 2010, 9, :o3, 1285423200
          tz.transition 2011, 4, :o2, 1301752800
          tz.transition 2011, 9, :o3, 1316872800
          tz.transition 2012, 3, :o2, 1333202400
          tz.transition 2012, 9, :o3, 1348927200
          tz.transition 2013, 4, :o2, 1365256800
          tz.transition 2013, 9, :o3, 1380376800
          tz.transition 2014, 4, :o2, 1396706400
          tz.transition 2014, 9, :o3, 1411826400
          tz.transition 2015, 4, :o2, 1428156000
          tz.transition 2015, 9, :o3, 1443276000
          tz.transition 2016, 4, :o2, 1459605600
          tz.transition 2016, 9, :o3, 1474725600
          tz.transition 2017, 4, :o2, 1491055200
          tz.transition 2017, 9, :o3, 1506175200
          tz.transition 2018, 3, :o2, 1522504800
          tz.transition 2018, 9, :o3, 1538229600
          tz.transition 2019, 4, :o2, 1554559200
          tz.transition 2019, 9, :o3, 1569679200
          tz.transition 2020, 4, :o2, 1586008800
          tz.transition 2020, 9, :o3, 1601128800
          tz.transition 2021, 4, :o2, 1617458400
          tz.transition 2021, 9, :o3, 1632578400
          tz.transition 2022, 4, :o2, 1648908000
          tz.transition 2022, 9, :o3, 1664028000
          tz.transition 2023, 4, :o2, 1680357600
          tz.transition 2023, 9, :o3, 1695477600
          tz.transition 2024, 4, :o2, 1712412000
          tz.transition 2024, 9, :o3, 1727532000
          tz.transition 2025, 4, :o2, 1743861600
          tz.transition 2025, 9, :o3, 1758981600
          tz.transition 2026, 4, :o2, 1775311200
          tz.transition 2026, 9, :o3, 1790431200
          tz.transition 2027, 4, :o2, 1806760800
          tz.transition 2027, 9, :o3, 1821880800
          tz.transition 2028, 4, :o2, 1838210400
          tz.transition 2028, 9, :o3, 1853330400
          tz.transition 2029, 3, :o2, 1869660000
          tz.transition 2029, 9, :o3, 1885384800
          tz.transition 2030, 4, :o2, 1901714400
          tz.transition 2030, 9, :o3, 1916834400
          tz.transition 2031, 4, :o2, 1933164000
          tz.transition 2031, 9, :o3, 1948284000
          tz.transition 2032, 4, :o2, 1964613600
          tz.transition 2032, 9, :o3, 1979733600
          tz.transition 2033, 4, :o2, 1996063200
          tz.transition 2033, 9, :o3, 2011183200
          tz.transition 2034, 4, :o2, 2027512800
          tz.transition 2034, 9, :o3, 2042632800
          tz.transition 2035, 3, :o2, 2058962400
          tz.transition 2035, 9, :o3, 2074687200
          tz.transition 2036, 4, :o2, 2091016800
          tz.transition 2036, 9, :o3, 2106136800
          tz.transition 2037, 4, :o2, 2122466400
          tz.transition 2037, 9, :o3, 2137586400
          tz.transition 2038, 4, :o2, 29586205, 12
          tz.transition 2038, 9, :o3, 29588305, 12
          tz.transition 2039, 4, :o2, 29590573, 12
          tz.transition 2039, 9, :o3, 29592673, 12
          tz.transition 2040, 3, :o2, 29594941, 12
          tz.transition 2040, 9, :o3, 29597125, 12
          tz.transition 2041, 4, :o2, 29599393, 12
          tz.transition 2041, 9, :o3, 29601493, 12
          tz.transition 2042, 4, :o2, 29603761, 12
          tz.transition 2042, 9, :o3, 29605861, 12
          tz.transition 2043, 4, :o2, 29608129, 12
          tz.transition 2043, 9, :o3, 29610229, 12
          tz.transition 2044, 4, :o2, 29612497, 12
          tz.transition 2044, 9, :o3, 29614597, 12
          tz.transition 2045, 4, :o2, 29616865, 12
          tz.transition 2045, 9, :o3, 29618965, 12
          tz.transition 2046, 3, :o2, 29621233, 12
          tz.transition 2046, 9, :o3, 29623417, 12
          tz.transition 2047, 4, :o2, 29625685, 12
          tz.transition 2047, 9, :o3, 29627785, 12
          tz.transition 2048, 4, :o2, 29630053, 12
          tz.transition 2048, 9, :o3, 29632153, 12
          tz.transition 2049, 4, :o2, 29634421, 12
          tz.transition 2049, 9, :o3, 29636521, 12
          tz.transition 2050, 4, :o2, 29638789, 12
          tz.transition 2050, 9, :o3, 29640889, 12
          tz.transition 2051, 4, :o2, 29643157, 12
          tz.transition 2051, 9, :o3, 29645257, 12
          tz.transition 2052, 4, :o2, 29647609, 12
          tz.transition 2052, 9, :o3, 29649709, 12
          tz.transition 2053, 4, :o2, 29651977, 12
          tz.transition 2053, 9, :o3, 29654077, 12
          tz.transition 2054, 4, :o2, 29656345, 12
          tz.transition 2054, 9, :o3, 29658445, 12
          tz.transition 2055, 4, :o2, 29660713, 12
          tz.transition 2055, 9, :o3, 29662813, 12
          tz.transition 2056, 4, :o2, 29665081, 12
          tz.transition 2056, 9, :o3, 29667181, 12
          tz.transition 2057, 3, :o2, 29669449, 12
          tz.transition 2057, 9, :o3, 29671633, 12
          tz.transition 2058, 4, :o2, 29673901, 12
          tz.transition 2058, 9, :o3, 29676001, 12
          tz.transition 2059, 4, :o2, 29678269, 12
          tz.transition 2059, 9, :o3, 29680369, 12
          tz.transition 2060, 4, :o2, 29682637, 12
          tz.transition 2060, 9, :o3, 29684737, 12
          tz.transition 2061, 4, :o2, 29687005, 12
          tz.transition 2061, 9, :o3, 29689105, 12
          tz.transition 2062, 4, :o2, 29691373, 12
          tz.transition 2062, 9, :o3, 29693473, 12
          tz.transition 2063, 3, :o2, 29695741, 12
          tz.transition 2063, 9, :o3, 29697925, 12
          tz.transition 2064, 4, :o2, 29700193, 12
          tz.transition 2064, 9, :o3, 29702293, 12
          tz.transition 2065, 4, :o2, 29704561, 12
          tz.transition 2065, 9, :o3, 29706661, 12
          tz.transition 2066, 4, :o2, 29708929, 12
          tz.transition 2066, 9, :o3, 29711029, 12
          tz.transition 2067, 4, :o2, 29713297, 12
          tz.transition 2067, 9, :o3, 29715397, 12
          tz.transition 2068, 3, :o2, 29717665, 12
          tz.transition 2068, 9, :o3, 29719849, 12
          tz.transition 2069, 4, :o2, 29722117, 12
          tz.transition 2069, 9, :o3, 29724217, 12
          tz.transition 2070, 4, :o2, 29726485, 12
          tz.transition 2070, 9, :o3, 29728585, 12
          tz.transition 2071, 4, :o2, 29730853, 12
          tz.transition 2071, 9, :o3, 29732953, 12
          tz.transition 2072, 4, :o2, 29735221, 12
          tz.transition 2072, 9, :o3, 29737321, 12
          tz.transition 2073, 4, :o2, 29739589, 12
          tz.transition 2073, 9, :o3, 29741689, 12
          tz.transition 2074, 3, :o2, 29743957, 12
          tz.transition 2074, 9, :o3, 29746141, 12
          tz.transition 2075, 4, :o2, 29748409, 12
        end
      end
    end
  end
end
