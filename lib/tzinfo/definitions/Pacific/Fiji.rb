# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Fiji
        include TimezoneDefinition
        
        timezone 'Pacific/Fiji' do |tz|
          tz.offset :o0, 42944, 0, :LMT
          tz.offset :o1, 43200, 0, :'+12'
          tz.offset :o2, 43200, 3600, :'+13'
          
          tz.transition 1915, 10, :o1, 1634037302, 675
          tz.transition 1998, 10, :o2, 909842400
          tz.transition 1999, 2, :o1, 920124000
          tz.transition 1999, 11, :o2, 941896800
          tz.transition 2000, 2, :o1, 951573600
          tz.transition 2009, 11, :o2, 1259416800
          tz.transition 2010, 3, :o1, 1269698400
          tz.transition 2010, 10, :o2, 1287842400
          tz.transition 2011, 3, :o1, 1299333600
          tz.transition 2011, 10, :o2, 1319292000
          tz.transition 2012, 1, :o1, 1327154400
          tz.transition 2012, 10, :o2, 1350741600
          tz.transition 2013, 1, :o1, 1358604000
          tz.transition 2013, 10, :o2, 1382796000
          tz.transition 2014, 1, :o1, 1390050000
          tz.transition 2014, 11, :o2, 1414850400
          tz.transition 2015, 1, :o1, 1421503200
          tz.transition 2015, 10, :o2, 1446300000
          tz.transition 2016, 1, :o1, 1452952800
          tz.transition 2016, 11, :o2, 1478354400
          tz.transition 2017, 1, :o1, 1484402400
          tz.transition 2017, 11, :o2, 1509804000
          tz.transition 2018, 1, :o1, 1515852000
          tz.transition 2018, 11, :o2, 1541253600
          tz.transition 2019, 1, :o1, 1547301600
          tz.transition 2019, 11, :o2, 1573308000
          tz.transition 2020, 1, :o1, 1578751200
          tz.transition 2020, 11, :o2, 1604757600
          tz.transition 2021, 1, :o1, 1610805600
          tz.transition 2021, 11, :o2, 1636812000
          tz.transition 2022, 1, :o1, 1642255200
          tz.transition 2022, 11, :o2, 1668261600
          tz.transition 2023, 1, :o1, 1673704800
          tz.transition 2023, 11, :o2, 1699711200
          tz.transition 2024, 1, :o1, 1705154400
          tz.transition 2024, 11, :o2, 1731160800
          tz.transition 2025, 1, :o1, 1736604000
          tz.transition 2025, 11, :o2, 1762610400
          tz.transition 2026, 1, :o1, 1768658400
          tz.transition 2026, 11, :o2, 1794060000
          tz.transition 2027, 1, :o1, 1800108000
          tz.transition 2027, 11, :o2, 1826114400
          tz.transition 2028, 1, :o1, 1831557600
          tz.transition 2028, 11, :o2, 1857564000
          tz.transition 2029, 1, :o1, 1863007200
          tz.transition 2029, 11, :o2, 1889013600
          tz.transition 2030, 1, :o1, 1894456800
          tz.transition 2030, 11, :o2, 1920463200
          tz.transition 2031, 1, :o1, 1925906400
          tz.transition 2031, 11, :o2, 1951912800
          tz.transition 2032, 1, :o1, 1957960800
          tz.transition 2032, 11, :o2, 1983967200
          tz.transition 2033, 1, :o1, 1989410400
          tz.transition 2033, 11, :o2, 2015416800
          tz.transition 2034, 1, :o1, 2020860000
          tz.transition 2034, 11, :o2, 2046866400
          tz.transition 2035, 1, :o1, 2052309600
          tz.transition 2035, 11, :o2, 2078316000
          tz.transition 2036, 1, :o1, 2083759200
          tz.transition 2036, 11, :o2, 2109765600
          tz.transition 2037, 1, :o1, 2115813600
          tz.transition 2037, 11, :o2, 2141215200
          tz.transition 2038, 1, :o1, 29585281, 12
          tz.transition 2038, 11, :o2, 29588893, 12
          tz.transition 2039, 1, :o1, 29589649, 12
          tz.transition 2039, 11, :o2, 29593261, 12
          tz.transition 2040, 1, :o1, 29594017, 12
          tz.transition 2040, 11, :o2, 29597629, 12
          tz.transition 2041, 1, :o1, 29598385, 12
          tz.transition 2041, 11, :o2, 29601997, 12
          tz.transition 2042, 1, :o1, 29602753, 12
          tz.transition 2042, 11, :o2, 29606365, 12
          tz.transition 2043, 1, :o1, 29607205, 12
          tz.transition 2043, 11, :o2, 29610733, 12
          tz.transition 2044, 1, :o1, 29611573, 12
          tz.transition 2044, 11, :o2, 29615185, 12
          tz.transition 2045, 1, :o1, 29615941, 12
          tz.transition 2045, 11, :o2, 29619553, 12
          tz.transition 2046, 1, :o1, 29620309, 12
          tz.transition 2046, 11, :o2, 29623921, 12
          tz.transition 2047, 1, :o1, 29624677, 12
          tz.transition 2047, 11, :o2, 29628289, 12
          tz.transition 2048, 1, :o1, 29629045, 12
          tz.transition 2048, 11, :o2, 29632657, 12
          tz.transition 2049, 1, :o1, 29633497, 12
          tz.transition 2049, 11, :o2, 29637109, 12
          tz.transition 2050, 1, :o1, 29637865, 12
        end
      end
    end
  end
end
