require 'tzinfo/timezone_definition'

module TZInfo
  module Definitions
    module Europe
      module Samara
        include TimezoneDefinition
        
        timezone 'Europe/Samara' do |tz|
          tz.offset :o0, 12036, 0, :LMT
          tz.offset :o1, 10800, 0, :KUYT
          tz.offset :o2, 14400, 0, :KUYT
          tz.offset :o3, 14400, 3600, :KUYST
          tz.offset :o4, 10800, 3600, :KUYST
          tz.offset :o5, 7200, 3600, :KUYST
          tz.offset :o6, 14400, 0, :SAMT
          tz.offset :o7, 14400, 3600, :SAMST
          
          tz.transition 1919, 6, :o1, 17439411197, 7200
          tz.transition 1930, 6, :o2, 19409187, 8
          tz.transition 1981, 3, :o3, 354916800
          tz.transition 1981, 9, :o2, 370724400
          tz.transition 1982, 3, :o3, 386452800
          tz.transition 1982, 9, :o2, 402260400
          tz.transition 1983, 3, :o3, 417988800
          tz.transition 1983, 9, :o2, 433796400
          tz.transition 1984, 3, :o3, 449611200
          tz.transition 1984, 9, :o2, 465343200
          tz.transition 1985, 3, :o3, 481068000
          tz.transition 1985, 9, :o2, 496792800
          tz.transition 1986, 3, :o3, 512517600
          tz.transition 1986, 9, :o2, 528242400
          tz.transition 1987, 3, :o3, 543967200
          tz.transition 1987, 9, :o2, 559692000
          tz.transition 1988, 3, :o3, 575416800
          tz.transition 1988, 9, :o2, 591141600
          tz.transition 1989, 3, :o4, 606866400
          tz.transition 1989, 9, :o1, 622594800
          tz.transition 1990, 3, :o4, 638319600
          tz.transition 1990, 9, :o1, 654649200
          tz.transition 1991, 3, :o5, 670374000
          tz.transition 1991, 9, :o1, 686102400
          tz.transition 1991, 10, :o6, 687916800
          tz.transition 1992, 3, :o7, 701809200
          tz.transition 1992, 9, :o6, 717530400
          tz.transition 1993, 3, :o7, 733269600
          tz.transition 1993, 9, :o6, 748994400
          tz.transition 1994, 3, :o7, 764719200
          tz.transition 1994, 9, :o6, 780444000
          tz.transition 1995, 3, :o7, 796168800
          tz.transition 1995, 9, :o6, 811893600
          tz.transition 1996, 3, :o7, 828223200
          tz.transition 1996, 10, :o6, 846367200
          tz.transition 1997, 3, :o7, 859672800
          tz.transition 1997, 10, :o6, 877816800
          tz.transition 1998, 3, :o7, 891122400
          tz.transition 1998, 10, :o6, 909266400
          tz.transition 1999, 3, :o7, 922572000
          tz.transition 1999, 10, :o6, 941320800
          tz.transition 2000, 3, :o7, 954021600
          tz.transition 2000, 10, :o6, 972770400
          tz.transition 2001, 3, :o7, 985471200
          tz.transition 2001, 10, :o6, 1004220000
          tz.transition 2002, 3, :o7, 1017525600
          tz.transition 2002, 10, :o6, 1035669600
          tz.transition 2003, 3, :o7, 1048975200
          tz.transition 2003, 10, :o6, 1067119200
          tz.transition 2004, 3, :o7, 1080424800
          tz.transition 2004, 10, :o6, 1099173600
          tz.transition 2005, 3, :o7, 1111874400
          tz.transition 2005, 10, :o6, 1130623200
          tz.transition 2006, 3, :o7, 1143324000
          tz.transition 2006, 10, :o6, 1162072800
          tz.transition 2007, 3, :o7, 1174773600
          tz.transition 2007, 10, :o6, 1193522400
          tz.transition 2008, 3, :o7, 1206828000
          tz.transition 2008, 10, :o6, 1224972000
          tz.transition 2009, 3, :o7, 1238277600
          tz.transition 2009, 10, :o6, 1256421600
          tz.transition 2010, 3, :o7, 1269727200
          tz.transition 2010, 10, :o6, 1288476000
          tz.transition 2011, 3, :o7, 1301176800
          tz.transition 2011, 10, :o6, 1319925600
          tz.transition 2012, 3, :o7, 1332626400
          tz.transition 2012, 10, :o6, 1351375200
          tz.transition 2013, 3, :o7, 1364680800
          tz.transition 2013, 10, :o6, 1382824800
          tz.transition 2014, 3, :o7, 1396130400
          tz.transition 2014, 10, :o6, 1414274400
          tz.transition 2015, 3, :o7, 1427580000
          tz.transition 2015, 10, :o6, 1445724000
          tz.transition 2016, 3, :o7, 1459029600
          tz.transition 2016, 10, :o6, 1477778400
          tz.transition 2017, 3, :o7, 1490479200
          tz.transition 2017, 10, :o6, 1509228000
          tz.transition 2018, 3, :o7, 1521928800
          tz.transition 2018, 10, :o6, 1540677600
          tz.transition 2019, 3, :o7, 1553983200
          tz.transition 2019, 10, :o6, 1572127200
          tz.transition 2020, 3, :o7, 1585432800
          tz.transition 2020, 10, :o6, 1603576800
          tz.transition 2021, 3, :o7, 1616882400
          tz.transition 2021, 10, :o6, 1635631200
          tz.transition 2022, 3, :o7, 1648332000
          tz.transition 2022, 10, :o6, 1667080800
          tz.transition 2023, 3, :o7, 1679781600
          tz.transition 2023, 10, :o6, 1698530400
          tz.transition 2024, 3, :o7, 1711836000
          tz.transition 2024, 10, :o6, 1729980000
          tz.transition 2025, 3, :o7, 1743285600
          tz.transition 2025, 10, :o6, 1761429600
          tz.transition 2026, 3, :o7, 1774735200
          tz.transition 2026, 10, :o6, 1792879200
          tz.transition 2027, 3, :o7, 1806184800
          tz.transition 2027, 10, :o6, 1824933600
          tz.transition 2028, 3, :o7, 1837634400
          tz.transition 2028, 10, :o6, 1856383200
          tz.transition 2029, 3, :o7, 1869084000
          tz.transition 2029, 10, :o6, 1887832800
          tz.transition 2030, 3, :o7, 1901138400
          tz.transition 2030, 10, :o6, 1919282400
          tz.transition 2031, 3, :o7, 1932588000
          tz.transition 2031, 10, :o6, 1950732000
          tz.transition 2032, 3, :o7, 1964037600
          tz.transition 2032, 10, :o6, 1982786400
          tz.transition 2033, 3, :o7, 1995487200
          tz.transition 2033, 10, :o6, 2014236000
          tz.transition 2034, 3, :o7, 2026936800
          tz.transition 2034, 10, :o6, 2045685600
          tz.transition 2035, 3, :o7, 2058386400
          tz.transition 2035, 10, :o6, 2077135200
          tz.transition 2036, 3, :o7, 2090440800
          tz.transition 2036, 10, :o6, 2108584800
          tz.transition 2037, 3, :o7, 2121890400
          tz.transition 2037, 10, :o6, 2140034400
          tz.transition 2038, 3, :o7, 29586125, 12
          tz.transition 2038, 10, :o6, 29588729, 12
          tz.transition 2039, 3, :o7, 29590493, 12
          tz.transition 2039, 10, :o6, 29593097, 12
          tz.transition 2040, 3, :o7, 29594861, 12
          tz.transition 2040, 10, :o6, 29597465, 12
          tz.transition 2041, 3, :o7, 29599313, 12
          tz.transition 2041, 10, :o6, 29601833, 12
          tz.transition 2042, 3, :o7, 29603681, 12
          tz.transition 2042, 10, :o6, 29606201, 12
          tz.transition 2043, 3, :o7, 29608049, 12
          tz.transition 2043, 10, :o6, 29610569, 12
          tz.transition 2044, 3, :o7, 29612417, 12
          tz.transition 2044, 10, :o6, 29615021, 12
          tz.transition 2045, 3, :o7, 29616785, 12
          tz.transition 2045, 10, :o6, 29619389, 12
          tz.transition 2046, 3, :o7, 29621153, 12
          tz.transition 2046, 10, :o6, 29623757, 12
          tz.transition 2047, 3, :o7, 29625605, 12
          tz.transition 2047, 10, :o6, 29628125, 12
          tz.transition 2048, 3, :o7, 29629973, 12
          tz.transition 2048, 10, :o6, 29632493, 12
          tz.transition 2049, 3, :o7, 29634341, 12
          tz.transition 2049, 10, :o6, 29636945, 12
          tz.transition 2050, 3, :o7, 29638709, 12
          tz.transition 2050, 10, :o6, 29641313, 12
        end
      end
    end
  end
end
