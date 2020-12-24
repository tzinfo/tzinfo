# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Belize
        include TimezoneDefinition
        
        timezone 'America/Belize' do |tz|
          tz.offset :o0, -21168, 0, :LMT
          tz.offset :o1, -21600, 0, :CST
          tz.offset :o2, -21600, 1800, :'-0530'
          tz.offset :o3, -21600, 3600, :CWT
          tz.offset :o4, -21600, 3600, :CPT
          tz.offset :o5, -21600, 3600, :CDT
          
          tz.transition 1912, 4, :o1, 483898749, 200
          tz.transition 1918, 10, :o2, 9687491, 4
          tz.transition 1919, 2, :o1, 116255939, 48
          tz.transition 1919, 10, :o2, 9688947, 4
          tz.transition 1920, 2, :o1, 116273747, 48
          tz.transition 1920, 10, :o2, 9690403, 4
          tz.transition 1921, 2, :o1, 116291219, 48
          tz.transition 1921, 10, :o2, 9691859, 4
          tz.transition 1922, 2, :o1, 116308691, 48
          tz.transition 1922, 10, :o2, 9693343, 4
          tz.transition 1923, 2, :o1, 116326163, 48
          tz.transition 1923, 10, :o2, 9694799, 4
          tz.transition 1924, 2, :o1, 116343635, 48
          tz.transition 1924, 10, :o2, 9696255, 4
          tz.transition 1925, 2, :o1, 116361443, 48
          tz.transition 1925, 10, :o2, 9697711, 4
          tz.transition 1926, 2, :o1, 116378915, 48
          tz.transition 1926, 10, :o2, 9699167, 4
          tz.transition 1927, 2, :o1, 116396387, 48
          tz.transition 1927, 10, :o2, 9700623, 4
          tz.transition 1928, 2, :o1, 116413859, 48
          tz.transition 1928, 10, :o2, 9702107, 4
          tz.transition 1929, 2, :o1, 116431331, 48
          tz.transition 1929, 10, :o2, 9703563, 4
          tz.transition 1930, 2, :o1, 116448803, 48
          tz.transition 1930, 10, :o2, 9705019, 4
          tz.transition 1931, 2, :o1, 116466611, 48
          tz.transition 1931, 10, :o2, 9706475, 4
          tz.transition 1932, 2, :o1, 116484083, 48
          tz.transition 1932, 10, :o2, 9707931, 4
          tz.transition 1933, 2, :o1, 116501555, 48
          tz.transition 1933, 10, :o2, 9709415, 4
          tz.transition 1934, 2, :o1, 116519027, 48
          tz.transition 1934, 10, :o2, 9710871, 4
          tz.transition 1935, 2, :o1, 116536499, 48
          tz.transition 1935, 10, :o2, 9712327, 4
          tz.transition 1936, 2, :o1, 116553971, 48
          tz.transition 1936, 10, :o2, 9713783, 4
          tz.transition 1937, 2, :o1, 116571779, 48
          tz.transition 1937, 10, :o2, 9715239, 4
          tz.transition 1938, 2, :o1, 116589251, 48
          tz.transition 1938, 10, :o2, 9716695, 4
          tz.transition 1939, 2, :o1, 116606723, 48
          tz.transition 1939, 10, :o2, 9718179, 4
          tz.transition 1940, 2, :o1, 116624195, 48
          tz.transition 1940, 10, :o2, 9719635, 4
          tz.transition 1941, 2, :o1, 116641667, 48
          tz.transition 1941, 10, :o2, 9721091, 4
          tz.transition 1942, 2, :o1, 116659475, 48
          tz.transition 1942, 6, :o3, 9722155, 4
          tz.transition 1945, 8, :o4, 58360379, 24
          tz.transition 1945, 12, :o1, 58363337, 24
          tz.transition 1947, 10, :o2, 9729855, 4
          tz.transition 1948, 2, :o1, 116764643, 48
          tz.transition 1948, 10, :o2, 9731311, 4
          tz.transition 1949, 2, :o1, 116782115, 48
          tz.transition 1949, 10, :o2, 9732767, 4
          tz.transition 1950, 2, :o1, 116799587, 48
          tz.transition 1950, 10, :o2, 9734251, 4
          tz.transition 1951, 2, :o1, 116817059, 48
          tz.transition 1951, 10, :o2, 9735707, 4
          tz.transition 1952, 2, :o1, 116834531, 48
          tz.transition 1952, 10, :o2, 9737163, 4
          tz.transition 1953, 2, :o1, 116852339, 48
          tz.transition 1953, 10, :o2, 9738619, 4
          tz.transition 1954, 2, :o1, 116869811, 48
          tz.transition 1954, 10, :o2, 9740075, 4
          tz.transition 1955, 2, :o1, 116887283, 48
          tz.transition 1955, 10, :o2, 9741531, 4
          tz.transition 1956, 2, :o1, 116904755, 48
          tz.transition 1956, 10, :o2, 9743015, 4
          tz.transition 1957, 2, :o1, 116922227, 48
          tz.transition 1957, 10, :o2, 9744471, 4
          tz.transition 1958, 2, :o1, 116939699, 48
          tz.transition 1958, 10, :o2, 9745927, 4
          tz.transition 1959, 2, :o1, 116957507, 48
          tz.transition 1959, 10, :o2, 9747383, 4
          tz.transition 1960, 2, :o1, 116974979, 48
          tz.transition 1960, 10, :o2, 9748839, 4
          tz.transition 1961, 2, :o1, 116992451, 48
          tz.transition 1961, 10, :o2, 9750323, 4
          tz.transition 1962, 2, :o1, 117009923, 48
          tz.transition 1962, 10, :o2, 9751779, 4
          tz.transition 1963, 2, :o1, 117027395, 48
          tz.transition 1963, 10, :o2, 9753235, 4
          tz.transition 1964, 2, :o1, 117044867, 48
          tz.transition 1964, 10, :o2, 9754691, 4
          tz.transition 1965, 2, :o1, 117062675, 48
          tz.transition 1965, 10, :o2, 9756147, 4
          tz.transition 1966, 2, :o1, 117080147, 48
          tz.transition 1966, 10, :o2, 9757603, 4
          tz.transition 1967, 2, :o1, 117097619, 48
          tz.transition 1967, 10, :o2, 9759087, 4
          tz.transition 1968, 2, :o1, 117115091, 48
          tz.transition 1973, 12, :o5, 123919200
          tz.transition 1974, 2, :o1, 129618000
          tz.transition 1982, 12, :o5, 409039200
          tz.transition 1983, 2, :o1, 413874000
        end
      end
    end
  end
end
