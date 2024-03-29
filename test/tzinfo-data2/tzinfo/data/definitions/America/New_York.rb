# encoding: UTF-8
# frozen_string_literal: true

# This file contains data derived from the IANA Time Zone Database
# (https://www.iana.org/time-zones).

module TZInfo
  module Data
    module Definitions
      module America
        module New_York
          include Format2::TimezoneDefinition

          timezone 'America/New_York' do |tz|
            tz.offset :o0, -17762, 0, 'LMT'
            tz.offset :o1, -18000, 0, 'EST'
            tz.offset :o2, -18000, 3600, 'EDT'
            tz.offset :o3, -18000, 3600, 'EWT'
            tz.offset :o4, -18000, 3600, 'EPT'

            tz.transition :o1, -2717650800
            tz.transition :o2, -1633280400
            tz.transition :o1, -1615140000
            tz.transition :o2, -1601830800
            tz.transition :o1, -1583690400
            tz.transition :o2, -1570381200
            tz.transition :o1, -1551636000
            tz.transition :o2, -1536512400
            tz.transition :o1, -1523210400
            tz.transition :o2, -1504458000
            tz.transition :o1, -1491760800
            tz.transition :o2, -1473008400
            tz.transition :o1, -1459706400
            tz.transition :o2, -1441558800
            tz.transition :o1, -1428256800
            tz.transition :o2, -1410109200
            tz.transition :o1, -1396807200
            tz.transition :o2, -1378659600
            tz.transition :o1, -1365357600
            tz.transition :o2, -1347210000
            tz.transition :o1, -1333908000
            tz.transition :o2, -1315155600
            tz.transition :o1, -1301853600
            tz.transition :o2, -1283706000
            tz.transition :o1, -1270404000
            tz.transition :o2, -1252256400
            tz.transition :o1, -1238954400
            tz.transition :o2, -1220806800
            tz.transition :o1, -1207504800
            tz.transition :o2, -1189357200
            tz.transition :o1, -1176055200
            tz.transition :o2, -1157302800
            tz.transition :o1, -1144605600
            tz.transition :o2, -1125853200
            tz.transition :o1, -1112551200
            tz.transition :o2, -1094403600
            tz.transition :o1, -1081101600
            tz.transition :o2, -1062954000
            tz.transition :o1, -1049652000
            tz.transition :o2, -1031504400
            tz.transition :o1, -1018202400
            tz.transition :o2, -1000054800
            tz.transition :o1, -986752800
            tz.transition :o2, -968000400
            tz.transition :o1, -955303200
            tz.transition :o2, -936550800
            tz.transition :o1, -923248800
            tz.transition :o2, -905101200
            tz.transition :o1, -891799200
            tz.transition :o3, -880218000
            tz.transition :o4, -769395600
            tz.transition :o1, -765396000
            tz.transition :o2, -747248400
            tz.transition :o1, -733946400
            tz.transition :o2, -715798800
            tz.transition :o1, -702496800
            tz.transition :o2, -684349200
            tz.transition :o1, -671047200
            tz.transition :o2, -652899600
            tz.transition :o1, -639597600
            tz.transition :o2, -620845200
            tz.transition :o1, -608148000
            tz.transition :o2, -589395600
            tz.transition :o1, -576093600
            tz.transition :o2, -557946000
            tz.transition :o1, -544644000
            tz.transition :o2, -526496400
            tz.transition :o1, -513194400
            tz.transition :o2, -495046800
            tz.transition :o1, -481744800
            tz.transition :o2, -463597200
            tz.transition :o1, -447271200
            tz.transition :o2, -431542800
            tz.transition :o1, -415821600
            tz.transition :o2, -400093200
            tz.transition :o1, -384372000
            tz.transition :o2, -368643600
            tz.transition :o1, -352922400
            tz.transition :o2, -337194000
            tz.transition :o1, -321472800
            tz.transition :o2, -305744400
            tz.transition :o1, -289418400
            tz.transition :o2, -273690000
            tz.transition :o1, -257968800
            tz.transition :o2, -242240400
            tz.transition :o1, -226519200
            tz.transition :o2, -210790800
            tz.transition :o1, -195069600
            tz.transition :o2, -179341200
            tz.transition :o1, -163620000
            tz.transition :o2, -147891600
            tz.transition :o1, -131565600
            tz.transition :o2, -116442000
            tz.transition :o1, -100116000
            tz.transition :o2, -84387600
            tz.transition :o1, -68666400
            tz.transition :o2, -52938000
            tz.transition :o1, -37216800
            tz.transition :o2, -21488400
            tz.transition :o1, -5767200
            tz.transition :o2, 9961200
            tz.transition :o1, 25682400
            tz.transition :o2, 41410800
            tz.transition :o1, 57736800
            tz.transition :o2, 73465200
            tz.transition :o1, 89186400
            tz.transition :o2, 104914800
            tz.transition :o1, 120636000
            tz.transition :o2, 126687600
            tz.transition :o1, 152085600
            tz.transition :o2, 162370800
            tz.transition :o1, 183535200
            tz.transition :o2, 199263600
            tz.transition :o1, 215589600
            tz.transition :o2, 230713200
            tz.transition :o1, 247039200
            tz.transition :o2, 262767600
            tz.transition :o1, 278488800
            tz.transition :o2, 294217200
            tz.transition :o1, 309938400
            tz.transition :o2, 325666800
            tz.transition :o1, 341388000
            tz.transition :o2, 357116400
            tz.transition :o1, 372837600
            tz.transition :o2, 388566000
            tz.transition :o1, 404892000
            tz.transition :o2, 420015600
            tz.transition :o1, 436341600
            tz.transition :o2, 452070000
            tz.transition :o1, 467791200
            tz.transition :o2, 483519600
            tz.transition :o1, 499240800
            tz.transition :o2, 514969200
            tz.transition :o1, 530690400
            tz.transition :o2, 544604400
            tz.transition :o1, 562140000
            tz.transition :o2, 576054000
            tz.transition :o1, 594194400
            tz.transition :o2, 607503600
            tz.transition :o1, 625644000
            tz.transition :o2, 638953200
            tz.transition :o1, 657093600
            tz.transition :o2, 671007600
            tz.transition :o1, 688543200
            tz.transition :o2, 702457200
            tz.transition :o1, 719992800
            tz.transition :o2, 733906800
            tz.transition :o1, 752047200
            tz.transition :o2, 765356400
            tz.transition :o1, 783496800
            tz.transition :o2, 796806000
            tz.transition :o1, 814946400
            tz.transition :o2, 828860400
            tz.transition :o1, 846396000
            tz.transition :o2, 860310000
            tz.transition :o1, 877845600
            tz.transition :o2, 891759600
            tz.transition :o1, 909295200
            tz.transition :o2, 923209200
            tz.transition :o1, 941349600
            tz.transition :o2, 954658800
            tz.transition :o1, 972799200
            tz.transition :o2, 986108400
            tz.transition :o1, 1004248800
            tz.transition :o2, 1018162800
            tz.transition :o1, 1035698400
            tz.transition :o2, 1049612400
            tz.transition :o1, 1067148000
            tz.transition :o2, 1081062000
            tz.transition :o1, 1099202400
            tz.transition :o2, 1112511600
            tz.transition :o1, 1130652000
            tz.transition :o2, 1143961200
            tz.transition :o1, 1162101600
            tz.transition :o2, 1173596400
            tz.transition :o1, 1194156000
            tz.transition :o2, 1205046000
            tz.transition :o1, 1225605600
            tz.transition :o2, 1236495600
            tz.transition :o1, 1257055200
            tz.transition :o2, 1268550000
            tz.transition :o1, 1289109600
            tz.transition :o2, 1299999600
            tz.transition :o1, 1320559200
            tz.transition :o2, 1331449200
            tz.transition :o1, 1352008800
            tz.transition :o2, 1362898800
            tz.transition :o1, 1383458400
            tz.transition :o2, 1394348400
            tz.transition :o1, 1414908000
            tz.transition :o2, 1425798000
            tz.transition :o1, 1446357600
            tz.transition :o2, 1457852400
            tz.transition :o1, 1478412000
            tz.transition :o2, 1489302000
            tz.transition :o1, 1509861600
            tz.transition :o2, 1520751600
            tz.transition :o1, 1541311200
            tz.transition :o2, 1552201200
            tz.transition :o1, 1572760800
            tz.transition :o2, 1583650800
            tz.transition :o1, 1604210400
            tz.transition :o2, 1615705200
            tz.transition :o1, 1636264800
            tz.transition :o2, 1647154800
            tz.transition :o1, 1667714400
            tz.transition :o2, 1678604400
            tz.transition :o1, 1699164000
            tz.transition :o2, 1710054000
            tz.transition :o1, 1730613600
            tz.transition :o2, 1741503600
            tz.transition :o1, 1762063200
            tz.transition :o2, 1772953200
            tz.transition :o1, 1793512800
            tz.transition :o2, 1805007600
            tz.transition :o1, 1825567200
            tz.transition :o2, 1836457200
            tz.transition :o1, 1857016800
            tz.transition :o2, 1867906800
            tz.transition :o1, 1888466400
            tz.transition :o2, 1899356400
            tz.transition :o1, 1919916000
            tz.transition :o2, 1930806000
            tz.transition :o1, 1951365600
            tz.transition :o2, 1962860400
            tz.transition :o1, 1983420000
            tz.transition :o2, 1994310000
            tz.transition :o1, 2014869600
            tz.transition :o2, 2025759600
            tz.transition :o1, 2046319200
            tz.transition :o2, 2057209200
            tz.transition :o1, 2077768800
            tz.transition :o2, 2088658800
            tz.transition :o1, 2109218400
            tz.transition :o2, 2120108400
            tz.transition :o1, 2140668000
            tz.transition :o2, 2152162800
            tz.transition :o1, 2172722400
            tz.transition :o2, 2183612400
            tz.transition :o1, 2204172000
            tz.transition :o2, 2215062000
            tz.transition :o1, 2235621600
            tz.transition :o2, 2246511600
            tz.transition :o1, 2267071200
            tz.transition :o2, 2277961200
            tz.transition :o1, 2298520800
            tz.transition :o2, 2309410800
            tz.transition :o1, 2329970400
            tz.transition :o2, 2341465200
            tz.transition :o1, 2362024800
            tz.transition :o2, 2372914800
            tz.transition :o1, 2393474400
            tz.transition :o2, 2404364400
            tz.transition :o1, 2424924000
            tz.transition :o2, 2435814000
            tz.transition :o1, 2456373600
            tz.transition :o2, 2467263600
            tz.transition :o1, 2487823200
            tz.transition :o2, 2499318000
            tz.transition :o1, 2519877600
            tz.transition :o2, 2530767600
            tz.transition :o1, 2551327200
            tz.transition :o2, 2562217200
            tz.transition :o1, 2582776800
            tz.transition :o2, 2593666800
            tz.transition :o1, 2614226400
            tz.transition :o2, 2625116400
            tz.transition :o1, 2645676000
            tz.transition :o2, 2656566000
            tz.transition :o1, 2677125600
            tz.transition :o2, 2688620400
            tz.transition :o1, 2709180000
            tz.transition :o2, 2720070000
            tz.transition :o1, 2740629600
            tz.transition :o2, 2751519600
            tz.transition :o1, 2772079200
            tz.transition :o2, 2782969200
            tz.transition :o1, 2803528800
            tz.transition :o2, 2814418800
            tz.transition :o1, 2834978400
            tz.transition :o2, 2846473200
            tz.transition :o1, 2867032800
            tz.transition :o2, 2877922800
            tz.transition :o1, 2898482400
            tz.transition :o2, 2909372400
            tz.transition :o1, 2929932000
            tz.transition :o2, 2940822000
            tz.transition :o1, 2961381600
            tz.transition :o2, 2972271600
            tz.transition :o1, 2992831200
            tz.transition :o2, 3003721200
            tz.transition :o1, 3024280800
            tz.transition :o2, 3035775600
            tz.transition :o1, 3056335200
            tz.transition :o2, 3067225200
            tz.transition :o1, 3087784800
            tz.transition :o2, 3098674800
            tz.transition :o1, 3119234400
            tz.transition :o2, 3130124400
            tz.transition :o1, 3150684000
            tz.transition :o2, 3161574000
            tz.transition :o1, 3182133600
            tz.transition :o2, 3193023600
            tz.transition :o1, 3213583200
            tz.transition :o2, 3225078000
            tz.transition :o1, 3245637600
            tz.transition :o2, 3256527600
            tz.transition :o1, 3277087200
          end
        end
      end
    end
  end
end
