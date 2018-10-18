# encoding: UTF-8

module TZInfo
  module Definitions
    module Asia
      module Macau
        include TimezoneDefinition
        
        timezone 'Asia/Macau' do |tz|
          tz.offset :o0, 27250, 0, :LMT
          tz.offset :o1, 28800, 0, :CST
          tz.offset :o2, 32400, 0, :'+09'
          tz.offset :o3, 32400, 3600, :'+10'
          tz.offset :o4, 28800, 3600, :CDT
          
          tz.transition 1904, 10, :o1, 4176201343, 1728
          tz.transition 1941, 12, :o2, 19442801, 8
          tz.transition 1942, 4, :o3, 29165761, 12
          tz.transition 1942, 11, :o2, 58336345, 24
          tz.transition 1943, 4, :o3, 29170141, 12
          tz.transition 1943, 9, :o2, 58343953, 24
          tz.transition 1945, 9, :o1, 19453833, 8
          tz.transition 1946, 4, :o4, 19455529, 8
          tz.transition 1946, 9, :o1, 19456753, 8
          tz.transition 1947, 4, :o4, 19458361, 8
          tz.transition 1947, 11, :o1, 19460161, 8
          tz.transition 1948, 5, :o4, 19461393, 8
          tz.transition 1948, 10, :o1, 19462849, 8
          tz.transition 1949, 4, :o4, 19464073, 8
          tz.transition 1949, 10, :o1, 19465753, 8
          tz.transition 1950, 4, :o4, 19466985, 8
          tz.transition 1950, 10, :o1, 19468665, 8
          tz.transition 1951, 3, :o4, 19469897, 8
          tz.transition 1951, 10, :o1, 19471585, 8
          tz.transition 1952, 4, :o4, 19472865, 8
          tz.transition 1952, 11, :o1, 19474545, 8
          tz.transition 1953, 4, :o4, 19475777, 8
          tz.transition 1953, 10, :o1, 19477457, 8
          tz.transition 1954, 3, :o4, 19478577, 8
          tz.transition 1954, 10, :o1, 19480369, 8
          tz.transition 1955, 3, :o4, 19481489, 8
          tz.transition 1955, 11, :o1, 19483337, 8
          tz.transition 1956, 3, :o4, 19484401, 8
          tz.transition 1956, 11, :o1, 116917501, 48
          tz.transition 1957, 3, :o4, 38974741, 16
          tz.transition 1957, 11, :o1, 116934973, 48
          tz.transition 1958, 3, :o4, 38980565, 16
          tz.transition 1958, 11, :o1, 116952445, 48
          tz.transition 1959, 3, :o4, 38986389, 16
          tz.transition 1959, 10, :o1, 116969917, 48
          tz.transition 1960, 3, :o4, 38992213, 16
          tz.transition 1960, 11, :o1, 116987725, 48
          tz.transition 1961, 3, :o4, 38998037, 16
          tz.transition 1961, 11, :o1, 117005197, 48
          tz.transition 1962, 3, :o4, 39003861, 16
          tz.transition 1962, 11, :o1, 117022669, 48
          tz.transition 1963, 3, :o4, 39009797, 16
          tz.transition 1963, 11, :o1, 117040141, 48
          tz.transition 1964, 3, :o4, 39015621, 16
          tz.transition 1964, 10, :o1, 117057613, 48
          tz.transition 1965, 4, :o4, 39021893, 16
          tz.transition 1965, 10, :o1, 117074411, 48
          tz.transition 1966, 4, :o4, 39027717, 16
          tz.transition 1966, 10, :o1, 117091883, 48
          tz.transition 1967, 4, :o4, 39033541, 16
          tz.transition 1967, 10, :o1, 117109693, 48
          tz.transition 1968, 4, :o4, 39039477, 16
          tz.transition 1968, 10, :o1, 117127165, 48
          tz.transition 1969, 4, :o4, 39045301, 16
          tz.transition 1969, 10, :o1, 117144637, 48
          tz.transition 1970, 4, :o4, 9315000
          tz.transition 1970, 10, :o1, 25036200
          tz.transition 1971, 4, :o4, 40764600
          tz.transition 1971, 10, :o1, 56485800
          tz.transition 1972, 4, :o4, 72214200
          tz.transition 1972, 10, :o1, 88540200
          tz.transition 1973, 4, :o4, 104268600
          tz.transition 1973, 10, :o1, 119989800
          tz.transition 1973, 12, :o4, 126041400
          tz.transition 1974, 10, :o1, 151439400
          tz.transition 1975, 4, :o4, 167167800
          tz.transition 1975, 10, :o1, 182889000
          tz.transition 1976, 4, :o4, 198617400
          tz.transition 1976, 10, :o1, 214338600
          tz.transition 1979, 5, :o4, 295385400
          tz.transition 1979, 10, :o1, 309292200
        end
      end
    end
  end
end
