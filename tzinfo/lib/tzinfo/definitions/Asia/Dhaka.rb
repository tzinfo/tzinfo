require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Asia
      module Dhaka
        include TimezoneDefinition
        
        timezone 'Asia/Dhaka' do |tz|
          tz.offset :o0, 21700, 0, :LMT
          tz.offset :o1, 21200, 0, :HMT
          tz.offset :o2, 23400, 0, :BURT
          tz.offset :o3, 19800, 0, :IST
          tz.offset :o4, 21600, 0, :DACT
          tz.offset :o5, 21600, 0, :BDT
          tz.offset :o6, 21600, 3600, :BDST
          
          tz.transition 1889, 12, :o1, 2083422167, 864
          tz.transition 1941, 9, :o2, 524937943, 216
          tz.transition 1942, 5, :o3, 116663723, 48
          tz.transition 1942, 8, :o2, 116668957, 48
          tz.transition 1951, 9, :o4, 116828123, 48
          tz.transition 1971, 3, :o5, 38772000
          tz.transition 2009, 6, :o6, 1245430800
          tz.transition 2009, 12, :o5, 1262278740
          tz.transition 2010, 3, :o6, 1270054740
          tz.transition 2010, 10, :o5, 1288544340
          tz.transition 2011, 3, :o6, 1301590740
          tz.transition 2011, 10, :o5, 1320080340
          tz.transition 2012, 3, :o6, 1333213140
          tz.transition 2012, 10, :o5, 1351702740
          tz.transition 2013, 3, :o6, 1364749140
          tz.transition 2013, 10, :o5, 1383238740
          tz.transition 2014, 3, :o6, 1396285140
          tz.transition 2014, 10, :o5, 1414774740
          tz.transition 2015, 3, :o6, 1427821140
          tz.transition 2015, 10, :o5, 1446310740
          tz.transition 2016, 3, :o6, 1459443540
          tz.transition 2016, 10, :o5, 1477933140
          tz.transition 2017, 3, :o6, 1490979540
          tz.transition 2017, 10, :o5, 1509469140
          tz.transition 2018, 3, :o6, 1522515540
          tz.transition 2018, 10, :o5, 1541005140
          tz.transition 2019, 3, :o6, 1554051540
          tz.transition 2019, 10, :o5, 1572541140
          tz.transition 2020, 3, :o6, 1585673940
          tz.transition 2020, 10, :o5, 1604163540
          tz.transition 2021, 3, :o6, 1617209940
          tz.transition 2021, 10, :o5, 1635699540
          tz.transition 2022, 3, :o6, 1648745940
          tz.transition 2022, 10, :o5, 1667235540
          tz.transition 2023, 3, :o6, 1680281940
          tz.transition 2023, 10, :o5, 1698771540
          tz.transition 2024, 3, :o6, 1711904340
          tz.transition 2024, 10, :o5, 1730393940
          tz.transition 2025, 3, :o6, 1743440340
          tz.transition 2025, 10, :o5, 1761929940
          tz.transition 2026, 3, :o6, 1774976340
          tz.transition 2026, 10, :o5, 1793465940
          tz.transition 2027, 3, :o6, 1806512340
          tz.transition 2027, 10, :o5, 1825001940
          tz.transition 2028, 3, :o6, 1838134740
          tz.transition 2028, 10, :o5, 1856624340
          tz.transition 2029, 3, :o6, 1869670740
          tz.transition 2029, 10, :o5, 1888160340
          tz.transition 2030, 3, :o6, 1901206740
          tz.transition 2030, 10, :o5, 1919696340
          tz.transition 2031, 3, :o6, 1932742740
          tz.transition 2031, 10, :o5, 1951232340
          tz.transition 2032, 3, :o6, 1964365140
          tz.transition 2032, 10, :o5, 1982854740
          tz.transition 2033, 3, :o6, 1995901140
          tz.transition 2033, 10, :o5, 2014390740
          tz.transition 2034, 3, :o6, 2027437140
          tz.transition 2034, 10, :o5, 2045926740
          tz.transition 2035, 3, :o6, 2058973140
          tz.transition 2035, 10, :o5, 2077462740
          tz.transition 2036, 3, :o6, 2090595540
          tz.transition 2036, 10, :o5, 2109085140
          tz.transition 2037, 3, :o6, 2122131540
          tz.transition 2037, 10, :o5, 2140621140
          tz.transition 2038, 3, :o6, 3550340459, 1440
          tz.transition 2038, 10, :o5, 3550648619, 1440
          tz.transition 2039, 3, :o6, 3550866059, 1440
          tz.transition 2039, 10, :o5, 3551174219, 1440
          tz.transition 2040, 3, :o6, 3551393099, 1440
          tz.transition 2040, 10, :o5, 3551701259, 1440
          tz.transition 2041, 3, :o6, 3551918699, 1440
          tz.transition 2041, 10, :o5, 3552226859, 1440
          tz.transition 2042, 3, :o6, 3552444299, 1440
          tz.transition 2042, 10, :o5, 3552752459, 1440
          tz.transition 2043, 3, :o6, 3552969899, 1440
          tz.transition 2043, 10, :o5, 3553278059, 1440
          tz.transition 2044, 3, :o6, 3553496939, 1440
          tz.transition 2044, 10, :o5, 3553805099, 1440
          tz.transition 2045, 3, :o6, 3554022539, 1440
          tz.transition 2045, 10, :o5, 3554330699, 1440
          tz.transition 2046, 3, :o6, 3554548139, 1440
          tz.transition 2046, 10, :o5, 3554856299, 1440
          tz.transition 2047, 3, :o6, 3555073739, 1440
          tz.transition 2047, 10, :o5, 3555381899, 1440
          tz.transition 2048, 3, :o6, 3555600779, 1440
          tz.transition 2048, 10, :o5, 3555908939, 1440
          tz.transition 2049, 3, :o6, 3556126379, 1440
          tz.transition 2049, 10, :o5, 3556434539, 1440
          tz.transition 2050, 3, :o6, 3556651979, 1440
          tz.transition 2050, 10, :o5, 3556960139, 1440
        end
      end
    end
  end
end
