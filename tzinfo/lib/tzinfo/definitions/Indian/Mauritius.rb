require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Indian
      module Mauritius
        include TimezoneDefinition
        
        timezone 'Indian/Mauritius' do |tz|
          tz.offset :o0, 13800, 0, :LMT
          tz.offset :o1, 14400, 0, :MUT
          tz.offset :o2, 14400, 3600, :MUST
          
          tz.transition 1906, 12, :o1, 348130993, 144
          tz.transition 1982, 10, :o2, 403041600
          tz.transition 1983, 3, :o1, 417034800
          tz.transition 2008, 10, :o2, 1224972000
          tz.transition 2009, 3, :o1, 1238274000
          tz.transition 2009, 10, :o2, 1256421600
          tz.transition 2010, 3, :o1, 1269723600
          tz.transition 2010, 10, :o2, 1288476000
          tz.transition 2011, 3, :o1, 1301173200
          tz.transition 2011, 10, :o2, 1319925600
          tz.transition 2012, 3, :o1, 1332622800
          tz.transition 2012, 10, :o2, 1351375200
          tz.transition 2013, 3, :o1, 1364677200
          tz.transition 2013, 10, :o2, 1382824800
          tz.transition 2014, 3, :o1, 1396126800
          tz.transition 2014, 10, :o2, 1414274400
          tz.transition 2015, 3, :o1, 1427576400
          tz.transition 2015, 10, :o2, 1445724000
          tz.transition 2016, 3, :o1, 1459026000
          tz.transition 2016, 10, :o2, 1477778400
          tz.transition 2017, 3, :o1, 1490475600
          tz.transition 2017, 10, :o2, 1509228000
          tz.transition 2018, 3, :o1, 1521925200
          tz.transition 2018, 10, :o2, 1540677600
          tz.transition 2019, 3, :o1, 1553979600
          tz.transition 2019, 10, :o2, 1572127200
          tz.transition 2020, 3, :o1, 1585429200
          tz.transition 2020, 10, :o2, 1603576800
          tz.transition 2021, 3, :o1, 1616878800
          tz.transition 2021, 10, :o2, 1635631200
          tz.transition 2022, 3, :o1, 1648328400
          tz.transition 2022, 10, :o2, 1667080800
          tz.transition 2023, 3, :o1, 1679778000
          tz.transition 2023, 10, :o2, 1698530400
          tz.transition 2024, 3, :o1, 1711832400
          tz.transition 2024, 10, :o2, 1729980000
          tz.transition 2025, 3, :o1, 1743282000
          tz.transition 2025, 10, :o2, 1761429600
          tz.transition 2026, 3, :o1, 1774731600
          tz.transition 2026, 10, :o2, 1792879200
          tz.transition 2027, 3, :o1, 1806181200
          tz.transition 2027, 10, :o2, 1824933600
          tz.transition 2028, 3, :o1, 1837630800
          tz.transition 2028, 10, :o2, 1856383200
          tz.transition 2029, 3, :o1, 1869080400
          tz.transition 2029, 10, :o2, 1887832800
          tz.transition 2030, 3, :o1, 1901134800
          tz.transition 2030, 10, :o2, 1919282400
          tz.transition 2031, 3, :o1, 1932584400
          tz.transition 2031, 10, :o2, 1950732000
          tz.transition 2032, 3, :o1, 1964034000
          tz.transition 2032, 10, :o2, 1982786400
          tz.transition 2033, 3, :o1, 1995483600
          tz.transition 2033, 10, :o2, 2014236000
          tz.transition 2034, 3, :o1, 2026933200
          tz.transition 2034, 10, :o2, 2045685600
          tz.transition 2035, 3, :o1, 2058382800
          tz.transition 2035, 10, :o2, 2077135200
          tz.transition 2036, 3, :o1, 2090437200
          tz.transition 2036, 10, :o2, 2108584800
          tz.transition 2037, 3, :o1, 2121886800
          tz.transition 2037, 10, :o2, 2140034400
          tz.transition 2038, 3, :o1, 19724083, 8
          tz.transition 2038, 10, :o2, 29588729, 12
          tz.transition 2039, 3, :o1, 19726995, 8
          tz.transition 2039, 10, :o2, 29593097, 12
          tz.transition 2040, 3, :o1, 19729907, 8
          tz.transition 2040, 10, :o2, 29597465, 12
          tz.transition 2041, 3, :o1, 19732875, 8
          tz.transition 2041, 10, :o2, 29601833, 12
          tz.transition 2042, 3, :o1, 19735787, 8
          tz.transition 2042, 10, :o2, 29606201, 12
          tz.transition 2043, 3, :o1, 19738699, 8
          tz.transition 2043, 10, :o2, 29610569, 12
          tz.transition 2044, 3, :o1, 19741611, 8
          tz.transition 2044, 10, :o2, 29615021, 12
          tz.transition 2045, 3, :o1, 19744523, 8
          tz.transition 2045, 10, :o2, 29619389, 12
          tz.transition 2046, 3, :o1, 19747435, 8
          tz.transition 2046, 10, :o2, 29623757, 12
          tz.transition 2047, 3, :o1, 19750403, 8
          tz.transition 2047, 10, :o2, 29628125, 12
          tz.transition 2048, 3, :o1, 19753315, 8
          tz.transition 2048, 10, :o2, 29632493, 12
          tz.transition 2049, 3, :o1, 19756227, 8
          tz.transition 2049, 10, :o2, 29636945, 12
          tz.transition 2050, 3, :o1, 19759139, 8
        end
      end
    end
  end
end
