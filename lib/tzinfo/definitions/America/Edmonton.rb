# encoding: UTF-8

module TZInfo
  module Definitions
    module America
      module Edmonton
        include TimezoneDefinition
        
        timezone 'America/Edmonton' do |tz|
          tz.offset :o0, -27232, 0, :LMT
          tz.offset :o1, -25200, 0, :MST
          tz.offset :o2, -25200, 3600, :MDT
          tz.offset :o3, -25200, 3600, :MWT
          tz.offset :o4, -25200, 3600, :MPT
          tz.offset :o5, -21600, 0, :CST
          
          tz.transition 1906, 9, :o1, 6527128001, 2700
          tz.transition 1918, 4, :o2, 19373583, 8
          tz.transition 1918, 10, :o1, 14531363, 6
          tz.transition 1919, 4, :o2, 19376495, 8
          tz.transition 1919, 5, :o1, 14532635, 6
          tz.transition 1920, 4, :o2, 19379519, 8
          tz.transition 1920, 10, :o1, 14535773, 6
          tz.transition 1921, 4, :o2, 19382431, 8
          tz.transition 1921, 9, :o1, 14537747, 6
          tz.transition 1922, 4, :o2, 19385399, 8
          tz.transition 1922, 9, :o1, 14539931, 6
          tz.transition 1923, 4, :o2, 19388311, 8
          tz.transition 1923, 9, :o1, 14542157, 6
          tz.transition 1942, 2, :o3, 19443199, 8
          tz.transition 1945, 8, :o4, 58360379, 24
          tz.transition 1945, 9, :o1, 14590373, 6
          tz.transition 1947, 4, :o2, 19458423, 8
          tz.transition 1947, 9, :o1, 14594741, 6
          tz.transition 1972, 4, :o2, 73472400
          tz.transition 1972, 10, :o1, 89193600
          tz.transition 1973, 4, :o2, 104922000
          tz.transition 1973, 10, :o1, 120643200
          tz.transition 1974, 4, :o2, 136371600
          tz.transition 1974, 10, :o1, 152092800
          tz.transition 1975, 4, :o2, 167821200
          tz.transition 1975, 10, :o1, 183542400
          tz.transition 1976, 4, :o2, 199270800
          tz.transition 1976, 10, :o1, 215596800
          tz.transition 1977, 4, :o2, 230720400
          tz.transition 1977, 10, :o1, 247046400
          tz.transition 1978, 4, :o2, 262774800
          tz.transition 1978, 10, :o1, 278496000
          tz.transition 1979, 4, :o2, 294224400
          tz.transition 1979, 10, :o1, 309945600
          tz.transition 1980, 4, :o2, 325674000
          tz.transition 1980, 10, :o1, 341395200
          tz.transition 1981, 4, :o2, 357123600
          tz.transition 1981, 10, :o1, 372844800
          tz.transition 1982, 4, :o2, 388573200
          tz.transition 1982, 10, :o1, 404899200
          tz.transition 1983, 4, :o2, 420022800
          tz.transition 1983, 10, :o1, 436348800
          tz.transition 1984, 4, :o2, 452077200
          tz.transition 1984, 10, :o1, 467798400
          tz.transition 1985, 4, :o2, 483526800
          tz.transition 1985, 10, :o1, 499248000
          tz.transition 1986, 4, :o2, 514976400
          tz.transition 1986, 10, :o1, 530697600
          tz.transition 1987, 4, :o2, 544611600
          tz.transition 1987, 10, :o1, 562147200
          tz.transition 1988, 4, :o2, 576061200
          tz.transition 1988, 10, :o1, 594201600
          tz.transition 1989, 4, :o2, 607510800
          tz.transition 1989, 10, :o1, 625651200
          tz.transition 1990, 4, :o2, 638960400
          tz.transition 1990, 10, :o1, 657100800
          tz.transition 1991, 4, :o2, 671014800
          tz.transition 1991, 10, :o1, 688550400
          tz.transition 1992, 4, :o2, 702464400
          tz.transition 1992, 10, :o1, 720000000
          tz.transition 1993, 4, :o2, 733914000
          tz.transition 1993, 10, :o1, 752054400
          tz.transition 1994, 4, :o2, 765363600
          tz.transition 1994, 10, :o1, 783504000
          tz.transition 1995, 4, :o2, 796813200
          tz.transition 1995, 10, :o1, 814953600
          tz.transition 1996, 4, :o2, 828867600
          tz.transition 1996, 10, :o1, 846403200
          tz.transition 1997, 4, :o2, 860317200
          tz.transition 1997, 10, :o1, 877852800
          tz.transition 1998, 4, :o2, 891766800
          tz.transition 1998, 10, :o1, 909302400
          tz.transition 1999, 4, :o2, 923216400
          tz.transition 1999, 10, :o1, 941356800
          tz.transition 2000, 4, :o2, 954666000
          tz.transition 2000, 10, :o1, 972806400
          tz.transition 2001, 4, :o2, 986115600
          tz.transition 2001, 10, :o1, 1004256000
          tz.transition 2002, 4, :o2, 1018170000
          tz.transition 2002, 10, :o1, 1035705600
          tz.transition 2003, 4, :o2, 1049619600
          tz.transition 2003, 10, :o1, 1067155200
          tz.transition 2004, 4, :o2, 1081069200
          tz.transition 2004, 10, :o1, 1099209600
          tz.transition 2005, 4, :o2, 1112518800
          tz.transition 2005, 10, :o1, 1130659200
          tz.transition 2006, 4, :o2, 1143968400
          tz.transition 2006, 10, :o1, 1162108800
          tz.transition 2007, 3, :o2, 1173603600
          tz.transition 2007, 11, :o1, 1194163200
          tz.transition 2008, 3, :o2, 1205053200
          tz.transition 2008, 11, :o1, 1225612800
          tz.transition 2009, 3, :o2, 1236502800
          tz.transition 2009, 11, :o1, 1257062400
          tz.transition 2010, 3, :o2, 1268557200
          tz.transition 2010, 11, :o1, 1289116800
          tz.transition 2011, 3, :o2, 1300006800
          tz.transition 2011, 11, :o1, 1320566400
          tz.transition 2012, 3, :o2, 1331456400
          tz.transition 2012, 11, :o1, 1352016000
          tz.transition 2013, 3, :o2, 1362906000
          tz.transition 2013, 11, :o1, 1383465600
          tz.transition 2014, 3, :o2, 1394355600
          tz.transition 2014, 11, :o1, 1414915200
          tz.transition 2015, 3, :o2, 1425805200
          tz.transition 2015, 11, :o1, 1446364800
          tz.transition 2016, 3, :o2, 1457859600
          tz.transition 2016, 11, :o1, 1478419200
          tz.transition 2017, 3, :o2, 1489309200
          tz.transition 2017, 11, :o1, 1509868800
          tz.transition 2018, 3, :o2, 1520758800
          tz.transition 2018, 11, :o1, 1541318400
          tz.transition 2019, 3, :o2, 1552208400
          tz.transition 2019, 11, :o1, 1572768000
          tz.transition 2020, 3, :o2, 1583658000
          tz.transition 2020, 11, :o1, 1604217600
          tz.transition 2021, 3, :o2, 1615712400
          tz.transition 2021, 11, :o1, 1636272000
          tz.transition 2022, 3, :o2, 1647162000
          tz.transition 2022, 11, :o1, 1667721600
          tz.transition 2023, 3, :o2, 1678611600
          tz.transition 2023, 11, :o1, 1699171200
          tz.transition 2024, 3, :o2, 1710061200
          tz.transition 2024, 11, :o1, 1730620800
          tz.transition 2025, 3, :o2, 1741510800
          tz.transition 2025, 11, :o1, 1762070400
          tz.transition 2026, 3, :o2, 1772960400
          tz.transition 2026, 11, :o5, 1793520000
        end
      end
    end
  end
end
