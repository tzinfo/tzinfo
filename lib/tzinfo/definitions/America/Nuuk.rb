# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Nuuk
        include TimezoneDefinition
        
        timezone 'America/Nuuk' do |tz|
          tz.offset :o0, -12416, 0, :LMT
          tz.offset :o1, -10800, 0, :'-03'
          tz.offset :o2, -10800, 3600, :'-02'
          tz.offset :o3, -7200, 0, :'-02'
          
          tz.transition 1916, 7, :o1, 3268448069, 1350
          tz.transition 1980, 4, :o2, 323845200
          tz.transition 1980, 9, :o1, 338950800
          tz.transition 1981, 3, :o2, 354675600
          tz.transition 1981, 9, :o1, 370400400
          tz.transition 1982, 3, :o2, 386125200
          tz.transition 1982, 9, :o1, 401850000
          tz.transition 1983, 3, :o2, 417574800
          tz.transition 1983, 9, :o1, 433299600
          tz.transition 1984, 3, :o2, 449024400
          tz.transition 1984, 9, :o1, 465354000
          tz.transition 1985, 3, :o2, 481078800
          tz.transition 1985, 9, :o1, 496803600
          tz.transition 1986, 3, :o2, 512528400
          tz.transition 1986, 9, :o1, 528253200
          tz.transition 1987, 3, :o2, 543978000
          tz.transition 1987, 9, :o1, 559702800
          tz.transition 1988, 3, :o2, 575427600
          tz.transition 1988, 9, :o1, 591152400
          tz.transition 1989, 3, :o2, 606877200
          tz.transition 1989, 9, :o1, 622602000
          tz.transition 1990, 3, :o2, 638326800
          tz.transition 1990, 9, :o1, 654656400
          tz.transition 1991, 3, :o2, 670381200
          tz.transition 1991, 9, :o1, 686106000
          tz.transition 1992, 3, :o2, 701830800
          tz.transition 1992, 9, :o1, 717555600
          tz.transition 1993, 3, :o2, 733280400
          tz.transition 1993, 9, :o1, 749005200
          tz.transition 1994, 3, :o2, 764730000
          tz.transition 1994, 9, :o1, 780454800
          tz.transition 1995, 3, :o2, 796179600
          tz.transition 1995, 9, :o1, 811904400
          tz.transition 1996, 3, :o2, 828234000
          tz.transition 1996, 10, :o1, 846378000
          tz.transition 1997, 3, :o2, 859683600
          tz.transition 1997, 10, :o1, 877827600
          tz.transition 1998, 3, :o2, 891133200
          tz.transition 1998, 10, :o1, 909277200
          tz.transition 1999, 3, :o2, 922582800
          tz.transition 1999, 10, :o1, 941331600
          tz.transition 2000, 3, :o2, 954032400
          tz.transition 2000, 10, :o1, 972781200
          tz.transition 2001, 3, :o2, 985482000
          tz.transition 2001, 10, :o1, 1004230800
          tz.transition 2002, 3, :o2, 1017536400
          tz.transition 2002, 10, :o1, 1035680400
          tz.transition 2003, 3, :o2, 1048986000
          tz.transition 2003, 10, :o1, 1067130000
          tz.transition 2004, 3, :o2, 1080435600
          tz.transition 2004, 10, :o1, 1099184400
          tz.transition 2005, 3, :o2, 1111885200
          tz.transition 2005, 10, :o1, 1130634000
          tz.transition 2006, 3, :o2, 1143334800
          tz.transition 2006, 10, :o1, 1162083600
          tz.transition 2007, 3, :o2, 1174784400
          tz.transition 2007, 10, :o1, 1193533200
          tz.transition 2008, 3, :o2, 1206838800
          tz.transition 2008, 10, :o1, 1224982800
          tz.transition 2009, 3, :o2, 1238288400
          tz.transition 2009, 10, :o1, 1256432400
          tz.transition 2010, 3, :o2, 1269738000
          tz.transition 2010, 10, :o1, 1288486800
          tz.transition 2011, 3, :o2, 1301187600
          tz.transition 2011, 10, :o1, 1319936400
          tz.transition 2012, 3, :o2, 1332637200
          tz.transition 2012, 10, :o1, 1351386000
          tz.transition 2013, 3, :o2, 1364691600
          tz.transition 2013, 10, :o1, 1382835600
          tz.transition 2014, 3, :o2, 1396141200
          tz.transition 2014, 10, :o1, 1414285200
          tz.transition 2015, 3, :o2, 1427590800
          tz.transition 2015, 10, :o1, 1445734800
          tz.transition 2016, 3, :o2, 1459040400
          tz.transition 2016, 10, :o1, 1477789200
          tz.transition 2017, 3, :o2, 1490490000
          tz.transition 2017, 10, :o1, 1509238800
          tz.transition 2018, 3, :o2, 1521939600
          tz.transition 2018, 10, :o1, 1540688400
          tz.transition 2019, 3, :o2, 1553994000
          tz.transition 2019, 10, :o1, 1572138000
          tz.transition 2020, 3, :o2, 1585443600
          tz.transition 2020, 10, :o1, 1603587600
          tz.transition 2021, 3, :o2, 1616893200
          tz.transition 2021, 10, :o1, 1635642000
          tz.transition 2022, 3, :o2, 1648342800
          tz.transition 2022, 10, :o1, 1667091600
          tz.transition 2023, 3, :o3, 1679792400
        end
      end
    end
  end
end
