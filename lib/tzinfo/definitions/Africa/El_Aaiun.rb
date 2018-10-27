# encoding: UTF-8

module TZInfo
  module Definitions
    module Africa
      module El_Aaiun
        include TimezoneDefinition
        
        timezone 'Africa/El_Aaiun' do |tz|
          tz.offset :o0, -3168, 0, :LMT
          tz.offset :o1, -3600, 0, :'-01'
          tz.offset :o2, 0, 0, :'+00'
          tz.offset :o3, 0, 3600, :'+01'
          tz.offset :o4, 3600, 0, :'+01'
          
          tz.transition 1934, 1, :o1, 728231561, 300
          tz.transition 1976, 4, :o2, 198291600
          tz.transition 1976, 5, :o3, 199756800
          tz.transition 1976, 7, :o2, 207702000
          tz.transition 1977, 5, :o3, 231292800
          tz.transition 1977, 9, :o2, 244249200
          tz.transition 1978, 6, :o3, 265507200
          tz.transition 1978, 8, :o2, 271033200
          tz.transition 2008, 6, :o3, 1212278400
          tz.transition 2008, 8, :o2, 1220223600
          tz.transition 2009, 6, :o3, 1243814400
          tz.transition 2009, 8, :o2, 1250809200
          tz.transition 2010, 5, :o3, 1272758400
          tz.transition 2010, 8, :o2, 1281222000
          tz.transition 2011, 4, :o3, 1301788800
          tz.transition 2011, 7, :o2, 1312066800
          tz.transition 2012, 4, :o3, 1335664800
          tz.transition 2012, 7, :o2, 1342749600
          tz.transition 2012, 8, :o3, 1345428000
          tz.transition 2012, 9, :o2, 1348970400
          tz.transition 2013, 4, :o3, 1367114400
          tz.transition 2013, 7, :o2, 1373162400
          tz.transition 2013, 8, :o3, 1376100000
          tz.transition 2013, 10, :o2, 1382839200
          tz.transition 2014, 3, :o3, 1396144800
          tz.transition 2014, 6, :o2, 1403920800
          tz.transition 2014, 8, :o3, 1406944800
          tz.transition 2014, 10, :o2, 1414288800
          tz.transition 2015, 3, :o3, 1427594400
          tz.transition 2015, 6, :o2, 1434247200
          tz.transition 2015, 7, :o3, 1437271200
          tz.transition 2015, 10, :o2, 1445738400
          tz.transition 2016, 3, :o3, 1459044000
          tz.transition 2016, 6, :o2, 1465092000
          tz.transition 2016, 7, :o3, 1468116000
          tz.transition 2016, 10, :o2, 1477792800
          tz.transition 2017, 3, :o3, 1490493600
          tz.transition 2017, 5, :o2, 1495332000
          tz.transition 2017, 7, :o3, 1498960800
          tz.transition 2017, 10, :o2, 1509242400
          tz.transition 2018, 3, :o3, 1521943200
          tz.transition 2018, 5, :o2, 1526176800
          tz.transition 2018, 6, :o3, 1529200800
          tz.transition 2018, 10, :o4, 1540594800
        end
      end
    end
  end
end
