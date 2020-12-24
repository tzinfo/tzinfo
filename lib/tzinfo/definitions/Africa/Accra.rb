# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module Accra
        include TimezoneDefinition
        
        timezone 'Africa/Accra' do |tz|
          tz.offset :o0, -52, 0, :LMT
          tz.offset :o1, 0, 0, :GMT
          tz.offset :o2, 0, 1200, :'+0020'
          tz.offset :o3, 1800, 0, :'+0030'
          tz.offset :o4, 0, 1800, :'+0030'
          
          tz.transition 1915, 11, :o1, 52289355613, 21600
          tz.transition 1919, 11, :o2, 4844573, 2
          tz.transition 1920, 1, :o1, 174407369, 72
          tz.transition 1920, 9, :o2, 29070823, 12
          tz.transition 1921, 1, :o1, 174433721, 72
          tz.transition 1921, 9, :o2, 29075203, 12
          tz.transition 1922, 1, :o1, 174460001, 72
          tz.transition 1922, 9, :o2, 29079583, 12
          tz.transition 1923, 1, :o1, 174486281, 72
          tz.transition 1923, 9, :o2, 29083963, 12
          tz.transition 1924, 1, :o1, 174512561, 72
          tz.transition 1924, 9, :o2, 29088355, 12
          tz.transition 1925, 1, :o1, 174538913, 72
          tz.transition 1925, 9, :o2, 29092735, 12
          tz.transition 1926, 1, :o1, 174565193, 72
          tz.transition 1926, 9, :o2, 29097115, 12
          tz.transition 1927, 1, :o1, 174591473, 72
          tz.transition 1927, 9, :o2, 29101495, 12
          tz.transition 1928, 1, :o1, 174617753, 72
          tz.transition 1928, 9, :o2, 29105887, 12
          tz.transition 1929, 1, :o1, 174644105, 72
          tz.transition 1929, 9, :o2, 29110267, 12
          tz.transition 1930, 1, :o1, 174670385, 72
          tz.transition 1930, 9, :o2, 29114647, 12
          tz.transition 1931, 1, :o1, 174696665, 72
          tz.transition 1931, 9, :o2, 29119027, 12
          tz.transition 1932, 1, :o1, 174722945, 72
          tz.transition 1932, 9, :o2, 29123419, 12
          tz.transition 1933, 1, :o1, 174749297, 72
          tz.transition 1933, 9, :o2, 29127799, 12
          tz.transition 1934, 1, :o1, 174775577, 72
          tz.transition 1934, 9, :o2, 29132179, 12
          tz.transition 1935, 1, :o1, 174801857, 72
          tz.transition 1935, 9, :o2, 29136559, 12
          tz.transition 1936, 1, :o1, 174828137, 72
          tz.transition 1936, 9, :o2, 29140951, 12
          tz.transition 1937, 1, :o1, 174854489, 72
          tz.transition 1937, 9, :o2, 29145331, 12
          tz.transition 1938, 1, :o1, 174880769, 72
          tz.transition 1938, 9, :o2, 29149711, 12
          tz.transition 1939, 1, :o1, 174907049, 72
          tz.transition 1939, 9, :o2, 29154091, 12
          tz.transition 1940, 1, :o1, 174933329, 72
          tz.transition 1940, 5, :o2, 29157007, 12
          tz.transition 1941, 1, :o1, 174959681, 72
          tz.transition 1941, 5, :o2, 29161387, 12
          tz.transition 1942, 1, :o1, 174985961, 72
          tz.transition 1942, 2, :o3, 4860797, 2
          tz.transition 1946, 1, :o1, 116727671, 48
          tz.transition 1950, 9, :o4, 29202307, 12
          tz.transition 1951, 1, :o1, 38938361, 16
          tz.transition 1951, 9, :o4, 29206687, 12
          tz.transition 1952, 1, :o1, 38944201, 16
          tz.transition 1952, 9, :o4, 29211079, 12
          tz.transition 1953, 1, :o1, 38950057, 16
          tz.transition 1953, 9, :o4, 29215459, 12
          tz.transition 1954, 1, :o1, 38955897, 16
          tz.transition 1954, 9, :o4, 29219839, 12
          tz.transition 1955, 1, :o1, 38961737, 16
          tz.transition 1955, 9, :o4, 29224219, 12
          tz.transition 1956, 1, :o1, 38967577, 16
        end
      end
    end
  end
end
