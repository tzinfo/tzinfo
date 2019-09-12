# encoding: UTF-8

module TZInfo
  module Definitions
    module Pacific
      module Norfolk
        include TimezoneDefinition
        
        timezone 'Pacific/Norfolk' do |tz|
          tz.offset :o0, 40312, 0, :LMT
          tz.offset :o1, 40320, 0, :'+1112'
          tz.offset :o2, 41400, 0, :'+1130'
          tz.offset :o3, 41400, 3600, :'+1230'
          tz.offset :o4, 39600, 0, :'+11'
          tz.offset :o5, 39600, 3600, :'+12'
          
          tz.transition 1900, 12, :o1, 26086158361, 10800
          tz.transition 1950, 12, :o2, 73009411, 30
          tz.transition 1974, 10, :o3, 152029800
          tz.transition 1975, 3, :o2, 162916200
          tz.transition 2015, 10, :o4, 1443882600
          tz.transition 2019, 10, :o5, 1570287600
          tz.transition 2020, 4, :o4, 1586012400
          tz.transition 2020, 10, :o5, 1601737200
          tz.transition 2021, 4, :o4, 1617462000
          tz.transition 2021, 10, :o5, 1633186800
          tz.transition 2022, 4, :o4, 1648911600
          tz.transition 2022, 10, :o5, 1664636400
          tz.transition 2023, 4, :o4, 1680361200
          tz.transition 2023, 9, :o5, 1696086000
          tz.transition 2024, 4, :o4, 1712415600
          tz.transition 2024, 10, :o5, 1728140400
          tz.transition 2025, 4, :o4, 1743865200
          tz.transition 2025, 10, :o5, 1759590000
          tz.transition 2026, 4, :o4, 1775314800
          tz.transition 2026, 10, :o5, 1791039600
          tz.transition 2027, 4, :o4, 1806764400
          tz.transition 2027, 10, :o5, 1822489200
          tz.transition 2028, 4, :o4, 1838214000
          tz.transition 2028, 9, :o5, 1853938800
          tz.transition 2029, 3, :o4, 1869663600
          tz.transition 2029, 10, :o5, 1885993200
          tz.transition 2030, 4, :o4, 1901718000
          tz.transition 2030, 10, :o5, 1917442800
          tz.transition 2031, 4, :o4, 1933167600
          tz.transition 2031, 10, :o5, 1948892400
          tz.transition 2032, 4, :o4, 1964617200
          tz.transition 2032, 10, :o5, 1980342000
          tz.transition 2033, 4, :o4, 1996066800
          tz.transition 2033, 10, :o5, 2011791600
          tz.transition 2034, 4, :o4, 2027516400
          tz.transition 2034, 9, :o5, 2043241200
          tz.transition 2035, 3, :o4, 2058966000
          tz.transition 2035, 10, :o5, 2075295600
          tz.transition 2036, 4, :o4, 2091020400
          tz.transition 2036, 10, :o5, 2106745200
          tz.transition 2037, 4, :o4, 2122470000
          tz.transition 2037, 10, :o5, 2138194800
          tz.transition 2038, 4, :o4, 19724137, 8
          tz.transition 2038, 10, :o5, 19725593, 8
          tz.transition 2039, 4, :o4, 19727049, 8
          tz.transition 2039, 10, :o5, 19728505, 8
          tz.transition 2040, 3, :o4, 19729961, 8
          tz.transition 2040, 10, :o5, 19731473, 8
          tz.transition 2041, 4, :o4, 19732929, 8
          tz.transition 2041, 10, :o5, 19734385, 8
          tz.transition 2042, 4, :o4, 19735841, 8
          tz.transition 2042, 10, :o5, 19737297, 8
          tz.transition 2043, 4, :o4, 19738753, 8
          tz.transition 2043, 10, :o5, 19740209, 8
          tz.transition 2044, 4, :o4, 19741665, 8
          tz.transition 2044, 10, :o5, 19743121, 8
          tz.transition 2045, 4, :o4, 19744577, 8
          tz.transition 2045, 9, :o5, 19746033, 8
          tz.transition 2046, 3, :o4, 19747489, 8
          tz.transition 2046, 10, :o5, 19749001, 8
          tz.transition 2047, 4, :o4, 19750457, 8
          tz.transition 2047, 10, :o5, 19751913, 8
          tz.transition 2048, 4, :o4, 19753369, 8
          tz.transition 2048, 10, :o5, 19754825, 8
          tz.transition 2049, 4, :o4, 19756281, 8
          tz.transition 2049, 10, :o5, 19757737, 8
          tz.transition 2050, 4, :o4, 19759193, 8
        end
      end
    end
  end
end
