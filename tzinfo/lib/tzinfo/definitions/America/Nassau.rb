require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module America
      module Nassau
        include TimezoneDefinition
        
        timezone 'America/Nassau' do |tz|
          tz.offset :o0, -18564, 0, :LMT
          tz.offset :o1, -18000, 0, :EST
          tz.offset :o2, -18000, 3600, :EDT
          
          tz.transition 1912, 3, :o1, 17420138747, 7200
          tz.transition 1964, 4, :o2, 58524283, 24
          tz.transition 1964, 10, :o1, 9754775, 4
          tz.transition 1965, 4, :o2, 58533019, 24
          tz.transition 1965, 10, :o1, 9756259, 4
          tz.transition 1966, 4, :o2, 58541755, 24
          tz.transition 1966, 10, :o1, 9757715, 4
          tz.transition 1967, 4, :o2, 58550659, 24
          tz.transition 1967, 10, :o1, 9759171, 4
          tz.transition 1968, 4, :o2, 58559395, 24
          tz.transition 1968, 10, :o1, 9760627, 4
          tz.transition 1969, 4, :o2, 58568131, 24
          tz.transition 1969, 10, :o1, 9762083, 4
          tz.transition 1970, 4, :o2, 9961200
          tz.transition 1970, 10, :o1, 25682400
          tz.transition 1971, 4, :o2, 41410800
          tz.transition 1971, 10, :o1, 57736800
          tz.transition 1972, 4, :o2, 73465200
          tz.transition 1972, 10, :o1, 89186400
          tz.transition 1973, 4, :o2, 104914800
          tz.transition 1973, 10, :o1, 120636000
          tz.transition 1974, 4, :o2, 136364400
          tz.transition 1974, 10, :o1, 152085600
          tz.transition 1975, 4, :o2, 167814000
          tz.transition 1975, 10, :o1, 183535200
          tz.transition 1976, 4, :o2, 199263600
          tz.transition 1976, 10, :o1, 215589600
          tz.transition 1977, 4, :o2, 230713200
          tz.transition 1977, 10, :o1, 247039200
          tz.transition 1978, 4, :o2, 262767600
          tz.transition 1978, 10, :o1, 278488800
          tz.transition 1979, 4, :o2, 294217200
          tz.transition 1979, 10, :o1, 309938400
          tz.transition 1980, 4, :o2, 325666800
          tz.transition 1980, 10, :o1, 341388000
          tz.transition 1981, 4, :o2, 357116400
          tz.transition 1981, 10, :o1, 372837600
          tz.transition 1982, 4, :o2, 388566000
          tz.transition 1982, 10, :o1, 404892000
          tz.transition 1983, 4, :o2, 420015600
          tz.transition 1983, 10, :o1, 436341600
          tz.transition 1984, 4, :o2, 452070000
          tz.transition 1984, 10, :o1, 467791200
          tz.transition 1985, 4, :o2, 483519600
          tz.transition 1985, 10, :o1, 499240800
          tz.transition 1986, 4, :o2, 514969200
          tz.transition 1986, 10, :o1, 530690400
          tz.transition 1987, 4, :o2, 544604400
          tz.transition 1987, 10, :o1, 562140000
          tz.transition 1988, 4, :o2, 576054000
          tz.transition 1988, 10, :o1, 594194400
          tz.transition 1989, 4, :o2, 607503600
          tz.transition 1989, 10, :o1, 625644000
          tz.transition 1990, 4, :o2, 638953200
          tz.transition 1990, 10, :o1, 657093600
          tz.transition 1991, 4, :o2, 671007600
          tz.transition 1991, 10, :o1, 688543200
          tz.transition 1992, 4, :o2, 702457200
          tz.transition 1992, 10, :o1, 719992800
          tz.transition 1993, 4, :o2, 733906800
          tz.transition 1993, 10, :o1, 752047200
          tz.transition 1994, 4, :o2, 765356400
          tz.transition 1994, 10, :o1, 783496800
          tz.transition 1995, 4, :o2, 796806000
          tz.transition 1995, 10, :o1, 814946400
          tz.transition 1996, 4, :o2, 828860400
          tz.transition 1996, 10, :o1, 846396000
          tz.transition 1997, 4, :o2, 860310000
          tz.transition 1997, 10, :o1, 877845600
          tz.transition 1998, 4, :o2, 891759600
          tz.transition 1998, 10, :o1, 909295200
          tz.transition 1999, 4, :o2, 923209200
          tz.transition 1999, 10, :o1, 941349600
          tz.transition 2000, 4, :o2, 954658800
          tz.transition 2000, 10, :o1, 972799200
          tz.transition 2001, 4, :o2, 986108400
          tz.transition 2001, 10, :o1, 1004248800
          tz.transition 2002, 4, :o2, 1018162800
          tz.transition 2002, 10, :o1, 1035698400
          tz.transition 2003, 4, :o2, 1049612400
          tz.transition 2003, 10, :o1, 1067148000
          tz.transition 2004, 4, :o2, 1081062000
          tz.transition 2004, 10, :o1, 1099202400
          tz.transition 2005, 4, :o2, 1112511600
          tz.transition 2005, 10, :o1, 1130652000
          tz.transition 2006, 4, :o2, 1143961200
          tz.transition 2006, 10, :o1, 1162101600
          tz.transition 2007, 4, :o2, 1175410800
          tz.transition 2007, 10, :o1, 1193551200
          tz.transition 2008, 4, :o2, 1207465200
          tz.transition 2008, 10, :o1, 1225000800
          tz.transition 2009, 4, :o2, 1238914800
          tz.transition 2009, 10, :o1, 1256450400
          tz.transition 2010, 4, :o2, 1270364400
          tz.transition 2010, 10, :o1, 1288504800
          tz.transition 2011, 4, :o2, 1301814000
          tz.transition 2011, 10, :o1, 1319954400
          tz.transition 2012, 4, :o2, 1333263600
          tz.transition 2012, 10, :o1, 1351404000
          tz.transition 2013, 4, :o2, 1365318000
          tz.transition 2013, 10, :o1, 1382853600
          tz.transition 2014, 4, :o2, 1396767600
          tz.transition 2014, 10, :o1, 1414303200
          tz.transition 2015, 4, :o2, 1428217200
          tz.transition 2015, 10, :o1, 1445752800
          tz.transition 2016, 4, :o2, 1459666800
          tz.transition 2016, 10, :o1, 1477807200
          tz.transition 2017, 4, :o2, 1491116400
          tz.transition 2017, 10, :o1, 1509256800
          tz.transition 2018, 4, :o2, 1522566000
          tz.transition 2018, 10, :o1, 1540706400
          tz.transition 2019, 4, :o2, 1554620400
          tz.transition 2019, 10, :o1, 1572156000
          tz.transition 2020, 4, :o2, 1586070000
          tz.transition 2020, 10, :o1, 1603605600
          tz.transition 2021, 4, :o2, 1617519600
          tz.transition 2021, 10, :o1, 1635660000
          tz.transition 2022, 4, :o2, 1648969200
          tz.transition 2022, 10, :o1, 1667109600
          tz.transition 2023, 4, :o2, 1680418800
          tz.transition 2023, 10, :o1, 1698559200
          tz.transition 2024, 4, :o2, 1712473200
          tz.transition 2024, 10, :o1, 1730008800
          tz.transition 2025, 4, :o2, 1743922800
          tz.transition 2025, 10, :o1, 1761458400
          tz.transition 2026, 4, :o2, 1775372400
          tz.transition 2026, 10, :o1, 1792908000
          tz.transition 2027, 4, :o2, 1806822000
          tz.transition 2027, 10, :o1, 1824962400
          tz.transition 2028, 4, :o2, 1838271600
          tz.transition 2028, 10, :o1, 1856412000
          tz.transition 2029, 4, :o2, 1869721200
          tz.transition 2029, 10, :o1, 1887861600
          tz.transition 2030, 4, :o2, 1901775600
          tz.transition 2030, 10, :o1, 1919311200
          tz.transition 2031, 4, :o2, 1933225200
          tz.transition 2031, 10, :o1, 1950760800
          tz.transition 2032, 4, :o2, 1964674800
          tz.transition 2032, 10, :o1, 1982815200
          tz.transition 2033, 4, :o2, 1996124400
          tz.transition 2033, 10, :o1, 2014264800
          tz.transition 2034, 4, :o2, 2027574000
          tz.transition 2034, 10, :o1, 2045714400
          tz.transition 2035, 4, :o2, 2059023600
          tz.transition 2035, 10, :o1, 2077164000
          tz.transition 2036, 4, :o2, 2091078000
          tz.transition 2036, 10, :o1, 2108613600
          tz.transition 2037, 4, :o2, 2122527600
          tz.transition 2037, 10, :o1, 2140063200
          tz.transition 2038, 4, :o2, 59172427, 24
          tz.transition 2038, 10, :o1, 9862911, 4
          tz.transition 2039, 4, :o2, 59181163, 24
          tz.transition 2039, 10, :o1, 9864367, 4
          tz.transition 2040, 4, :o2, 59189899, 24
          tz.transition 2040, 10, :o1, 9865823, 4
          tz.transition 2041, 4, :o2, 59198803, 24
          tz.transition 2041, 10, :o1, 9867279, 4
          tz.transition 2042, 4, :o2, 59207539, 24
          tz.transition 2042, 10, :o1, 9868735, 4
          tz.transition 2043, 4, :o2, 59216275, 24
          tz.transition 2043, 10, :o1, 9870191, 4
          tz.transition 2044, 4, :o2, 59225011, 24
          tz.transition 2044, 10, :o1, 9871675, 4
          tz.transition 2045, 4, :o2, 59233747, 24
          tz.transition 2045, 10, :o1, 9873131, 4
          tz.transition 2046, 4, :o2, 59242483, 24
          tz.transition 2046, 10, :o1, 9874587, 4
          tz.transition 2047, 4, :o2, 59251387, 24
          tz.transition 2047, 10, :o1, 9876043, 4
          tz.transition 2048, 4, :o2, 59260123, 24
          tz.transition 2048, 10, :o1, 9877499, 4
          tz.transition 2049, 4, :o2, 59268859, 24
          tz.transition 2049, 10, :o1, 9878983, 4
          tz.transition 2050, 4, :o2, 59277595, 24
          tz.transition 2050, 10, :o1, 9880439, 4
        end
      end
    end
  end
end
