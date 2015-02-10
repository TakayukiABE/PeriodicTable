//
//  PeriodicModel.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class PeriodicModel: NSObject {
   
    var elementArray:[[Element]] = []
    
    
    
    
    
    
    override init() {
        super.init()
        
        var empty:Element = Element(symbol: " ", name: "empty", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var one:Element = Element(symbol: "1", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var two:Element = Element(symbol: "2", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var three:Element = Element(symbol: "3", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var four:Element = Element(symbol: "4", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var five:Element = Element(symbol: "5", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var six:Element = Element(symbol: "6", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var seven:Element = Element(symbol: "7", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var eight:Element = Element(symbol: "8", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var nine:Element = Element(symbol: "9", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var ten:Element = Element(symbol: "10", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var eleven:Element = Element(symbol: "11", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var twelve:Element = Element(symbol: "12", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var thirteen:Element = Element(symbol: "13", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var fourteen:Element = Element(symbol: "14", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var fifteen:Element = Element(symbol: "15", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var sixteen:Element = Element(symbol: "16", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var seventeen:Element = Element(symbol: "17", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        var eighteen:Element = Element(symbol: "18", name: "num", number: 0, massNumber: 0,state:" ", boilingPoint:7000, meltingPoint:7000, ionization:0.0, affinity:0, orbit:" ")
        
        var H:Element = Element(symbol: "H", name: "水素", number: 1, massNumber: 1.008, state: "気体", boilingPoint:-259, meltingPoint:-253, ionization: 1312.0, affinity: 72, orbit: "K1")
        var He:Element = Element(symbol: "He", name: "ヘリウム", number: 2, massNumber: 4.002, state: "気体", boilingPoint:-272, meltingPoint: -269, ionization: 2372.3, affinity: -48, orbit: "K2")
        var Li:Element = Element(symbol: "Li", name: "リチウム", number: 3, massNumber: 6.94, state: "個体", boilingPoint: 181, meltingPoint: 1347, ionization: 520.2, affinity: 60, orbit: "K2L1")
        var Be:Element = Element(symbol: "Be", name: "ベリリウム", number: 4, massNumber: 9.012, state: "個体", boilingPoint: 1287, meltingPoint: 2472, ionization: 899.5, affinity: 0, orbit: "K2L2")
        var B:Element = Element(symbol: "B", name: "ホウ素", number: 5, massNumber: 10.81, state: "個体", boilingPoint: 2077, meltingPoint: 3870, ionization: 800.6, affinity: 27, orbit: "K2L3")
        var C:Element = Element(symbol: "C", name: "炭素", number: 6, massNumber: 12.011, state: "個体", boilingPoint: 9999, meltingPoint: 3370, ionization: 1086.5, affinity: 122, orbit: "K2L4")
        var N:Element = Element(symbol: "N", name: "窒素", number: 7, massNumber: 14.007, state: "気体", boilingPoint: -210, meltingPoint: -196, ionization: 1402.3, affinity: -8, orbit: "K2L5")
        var O:Element = Element(symbol: "O", name: "酸素", number: 8, massNumber: 15.999, state: "気体", boilingPoint: -218, meltingPoint: -183, ionization: 1313.9, affinity: 141, orbit: "K2L6")
        var F:Element = Element(symbol: "F", name: "フッ素", number: 9, massNumber: 18.998, state: "気体", boilingPoint: -220, meltingPoint: -188, ionization: 1681.0, affinity: 328, orbit: "K2L7")
        var Ne:Element = Element(symbol: "Ne", name: "ネオン", number: 10, massNumber: 20.179, state: "気体", boilingPoint: -249, meltingPoint: -246, ionization: 2080.7, affinity: -116, orbit: "K2L8")
        var Na:Element = Element(symbol: "Na", name: "ナトリウム", number: 11, massNumber: 22.989, state: "個体", boilingPoint: 98, meltingPoint: 883, ionization: 495.8, affinity: 53, orbit: "K2L8M1")
        var Mg:Element = Element(symbol: "Mg", name: "マグネシウム", number: 12, massNumber: 24.305, state: "個体", boilingPoint: 650, meltingPoint: 1095, ionization: 737.7, affinity: 0, orbit: "K2L8M2")
        var Al:Element = Element(symbol: "Al", name: "アルミニウム", number: 13, massNumber: 26.981, state: "個体", boilingPoint: 660, meltingPoint: 2520, ionization: 577.5, affinity: 43, orbit: "K2L8M3")
        var Si:Element = Element(symbol: "Si", name: "ケイ素", number: 14, massNumber: 28.085, state: "個体", boilingPoint: 1412, meltingPoint: 3266, ionization: 786.5, affinity: 134, orbit: "K2L8M4")
        var P:Element = Element(symbol: "P", name: "リン", number: 15, massNumber: 30.973, state: "個体", boilingPoint: 590, meltingPoint: 430, ionization: 1011.8, affinity: 72, orbit: "K2L8M5")
        var S:Element = Element(symbol: "S", name: "硫黄", number: 16, massNumber: 32.06, state: "個体", boilingPoint: 113, meltingPoint: 445, ionization: 999.6, affinity: 200, orbit: "K2L8M6")
        var Cl:Element = Element(symbol: "Cl", name: "塩素", number: 17, massNumber: 35.45, state: "気体", boilingPoint: -101, meltingPoint: -34, ionization: 1251.2, affinity: 349, orbit: "K2L8M7")
        var Ar:Element = Element(symbol: "Ar", name: "アルゴン", number: 18, massNumber: 39.948, state: "気体", boilingPoint: -189, meltingPoint: -186, ionization: 1520.6, affinity: -96, orbit: "K2L8M8")
        var K:Element = Element(symbol: "K", name: "カリウム", number: 19, massNumber: 39.098, state: "個体", boilingPoint: 64, meltingPoint: 765, ionization: 418.8, affinity: 48, orbit: "K2L8M8N1")
        var Ca:Element = Element(symbol: "Ca", name: "カルシウム", number: 20, massNumber: 40.078, state: "個体", boilingPoint: 842, meltingPoint: 1503, ionization: 589.8, affinity: 2, orbit: "K2L8M8N2")
        var Sc:Element = Element(symbol: "Sc", name: "スカンジウム", number: 21, massNumber: 44.955, state: "個体", boilingPoint: 1539, meltingPoint: 2831, ionization: 633.1, affinity: 18, orbit: "K2L8M9N2")
        var Ti:Element = Element(symbol: "Ti", name: "チタン", number: 22, massNumber: 47.867, state: "個体", boilingPoint: 1666, meltingPoint: 3289, ionization: 658.8, affinity: 8, orbit: "K2L8M10N2")
        var V:Element = Element(symbol: "V", name: "バナジウム", number: 23, massNumber: 50.942, state: "個体", boilingPoint: 1917, meltingPoint: 3420, ionization: 650.9, affinity: 51, orbit: "K2L8M11N2")
        var Cr:Element = Element(symbol: "Cr", name: "クロム", number: 24, massNumber: 51.996, state: "個体", boilingPoint: 1857, meltingPoint: 2682, ionization: 652.9, affinity: 65, orbit: "K2L8M13N1")
        var Mn:Element = Element(symbol: "Mn", name: "マンガン", number: 25, massNumber: 54.938, state: "個体", boilingPoint: 1246, meltingPoint: 2062, ionization: 717.3, affinity: 0, orbit: "K2L8M13N2")
        var Fe:Element = Element(symbol: "Fe", name: "鉄", number: 26, massNumber: 55.845, state: "個体", boilingPoint: 1546, meltingPoint: 2863, ionization: 762.5, affinity: 15, orbit: "K2L8M14N2")
        var Co = Element(symbol: "Co", name: "コバルト", number: 27, massNumber: 58.933, state: "個体", boilingPoint: 1495, meltingPoint: 2930, ionization: 760.4, affinity: 64, orbit: "K2L8M15N2")
        var Ni = Element(symbol: "Ni", name: "ニッケル", number: 28, massNumber: 58.693, state: "個体", boilingPoint: 1455, meltingPoint: 2890, ionization: 737.1, affinity: 112, orbit: "K2L8M16N2")
        var Cu = Element(symbol: "Cu", name: "銅", number: 29, massNumber: 63.546, state: "個体", boilingPoint: 1085, meltingPoint: 2571, ionization: 745.5, affinity: 119, orbit: "K2L8M18N1")
        var Zn = Element(symbol: "Zn", name: "亜鉛", number: 30, massNumber: 65.38, state: "個体", boilingPoint: 420, meltingPoint: 907, ionization: 906.4, affinity: 0, orbit: "K2L8M18N2")
        var Ga = Element(symbol: "Ga", name: "ガリウム", number: 31, massNumber: 69.723, state: "個体", boilingPoint: 30, meltingPoint: 2208, ionization: 578.8, affinity: 41, orbit: "K2L8M18N3")
        var Ge = Element(symbol: "Ge", name: "ゲルマニウム", number: 32, massNumber: 72.63, state: "個体", boilingPoint: 937, meltingPoint: 2834, ionization: 762, affinity: 119, orbit: "K2L8M18N4")
        var As = Element(symbol: "As", name: "ヒ素", number: 33, massNumber: 74.921, state: "固定", boilingPoint: 817, meltingPoint: 603, ionization: 947.0, affinity: 79, orbit: "K2L8M18N5")
        var Se = Element(symbol: "Se", name: "セレン", number: 34, massNumber: 78.971, state: "固定", boilingPoint: 220, meltingPoint: 685, ionization: 941.0, affinity: 195, orbit: "K2L8M18N6")
        var Br = Element(symbol: "Br", name: "臭素", number: 35, massNumber: 79.904, state: "液体", boilingPoint: -7, meltingPoint: 59, ionization: 1139.9, affinity: 314, orbit: "K2L8M18N7")
        var Kr = Element(symbol: "Kr", name: "クリプトン", number: 36, massNumber: 83.798, state: "気体", boilingPoint: -157, meltingPoint: -153, ionization: 1350.8, affinity: -96, orbit: "K2L8M18N8")
        var Rb = Element(symbol: "Rb", name: "ルビジウム", number: 37, massNumber: 85.468, state: "個体", boilingPoint: 39, meltingPoint: 688, ionization: 403.0, affinity: 47, orbit: "K2L8M18N8O1")
        var Sr = Element(symbol: "Sr", name: "スロトンチウム", number: 38, massNumber: 87.62, state: "個体", boilingPoint: 777, meltingPoint: 1414, ionization: 549.5, affinity: 5, orbit: "K2L8M18N8O2")
        var Y = Element(symbol: "Y", name: "イットリウム", number: 39, massNumber: 88.906, state: "", boilingPoint: 1520, meltingPoint: 3388, ionization: 600, affinity: 30, orbit: "K2L8M18N9O2")
        var Zr = Element(symbol: "Zr", name:"ジルコニウム", number: 40, massNumber: 91.224, state: "", boilingPoint: 1852, meltingPoint: 4361, ionization: 640.1, affinity: 41, orbit: "K2L8M18N10O2")
        var Nb = Element(symbol: "Nb", name: "ニオブ", number: 41, massNumber: 92.906, state: "", boilingPoint: 2469, meltingPoint: 4927, ionization: 652.1, affinity: 86, orbit: "K2L8M18N12O1")
        var Mo = Element(symbol: "Mo", name: "モリブデン", number: 42, massNumber: 95.95, state: "", boilingPoint: 2623, meltingPoint: 4682, ionization: 684.3, affinity: 72, orbit: "K2L8M18N13O1")
        var Tc = Element(symbol: "Tc", name: "テクネチウム", number: 43, massNumber: 98, state: "", boilingPoint: 2157, meltingPoint: 4265, ionization: 702, affinity: 53, orbit: "K2L8M18N13O2")
        var Ru = Element(symbol: "Ru", name: "ルテニウム", number: 44, massNumber: 101.07, state: "", boilingPoint: 2250, meltingPoint: 4155, ionization: 710.2, affinity: 101, orbit: "K2L8M18N15O1")
        var Rh = Element(symbol: "Rh", name: "ロジウム", number: 45, massNumber: 102.906, state: "", boilingPoint: 1960, meltingPoint: 3697, ionization: 719.7, affinity: 110, orbit: "K2L8M18N16O1")
        var Pd = Element(symbol: "Pd", name: "パラジウム", number: 46, massNumber: 106.42, state: "", boilingPoint: 1552, meltingPoint: 2964, ionization: 804.4, affinity: 54, orbit: "K2L8M18N18")
        var Ag = Element(symbol: "Ag", name: "銀", number: 47, massNumber: 107.868, state: "", boilingPoint: 962, meltingPoint: 2162, ionization: 731.0, affinity: 126, orbit: "K2L8M18N18O1")
        var Cd = Element(symbol: "Cd", name: "カドミウム", number: 48, massNumber: 112.414, state: "", boilingPoint: 321, meltingPoint: 767, ionization: 867.8, affinity: 0, orbit: "K2L8M18N18O2")
        var In = Element(symbol: "In", name: "インジウム", number: 49, massNumber: 114.818, state: "", boilingPoint: 157, meltingPoint: 2072, ionization: 558.3, affinity: 39, orbit: "K2L8M18N18O3")
        var Sn = Element(symbol: "Sn", name: "スズ", number: 50, massNumber: 118.710, state: "", boilingPoint: 232, meltingPoint: 2603, ionization: 708.6, affinity: 107, orbit: "K2L8M18N18O4")
        var Sb = Element(symbol: "Sb", name: "アンチモン", number: 51, massNumber: 121.760, state: "", boilingPoint: 631, meltingPoint: 1587, ionization: 834, affinity: 101, orbit: "K2L8M18N18O5")
        var Te = Element(symbol: "Te", name: "テルル", number: 52, massNumber: 127.60, state: "", boilingPoint: 450, meltingPoint: 991, ionization: 869.3, affinity: 190, orbit: "K2L8M18N18O6")
        var I = Element(symbol: "I", name: "ヨウ素", number: 53, massNumber: 126.904, state: "", boilingPoint: 114, meltingPoint: 184, ionization: 1008.4, affinity: 295, orbit: "K2L8M18N18O7")
        var Xe = Element(symbol: "Xe", name: "キセノン", number: 52, massNumber: 131.293, state: "", boilingPoint: -112, meltingPoint: -108, ionization: 1170.4, affinity: -77, orbit: "K2L8M18N18O8")
        
        
        elementArray.append([empty, one, two, three, four, five])
        elementArray.append([one, H, Li, Na, K, Rb])
        elementArray.append([two, empty, Be, Mg, Ca, Sr])
        elementArray.append([three, empty, empty, empty, Sc, Y])
        elementArray.append([four, empty, empty, empty, Ti, Zr])
        elementArray.append([five, empty, empty, empty, V, Nb])
        elementArray.append([six, empty, empty, empty, Cr, Mo])
        elementArray.append([seven, empty, empty, empty, Mn, Tc])
        elementArray.append([eight, empty, empty, empty, Fe, Ru])
        elementArray.append([nine, empty, empty, empty, Co, Rh])
        elementArray.append([ten, empty, empty, empty, Ni, Pd])
        elementArray.append([eleven, empty, empty, empty, Cu, Ag])
        elementArray.append([twelve, empty, empty, empty,Zn, Cd])
        elementArray.append([thirteen, empty, B, Al, Ga, In])
        elementArray.append([fourteen, empty, C, Si, Ge, Sn])
        elementArray.append([fifteen, empty, N, P, As, Sb])
        elementArray.append([sixteen, empty, O, S, Se, Te])
        elementArray.append([seventeen, empty, F, Cl, Br, I])
        elementArray.append([eighteen, He, Ne, Ar, Kr, Xe])
        
        
    }
    
    
}
