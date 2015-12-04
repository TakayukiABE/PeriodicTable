//
//  PeriodicModel.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit
import RealmSwift

class PeriodicModel: NSObject {

    var elements:[Element] = []
    var isLanthanide = false
    var isActinide = false

    override init() {
        super.init()
        let realm = Realm()
        if realm.objects(Element).count != 122 {
            realm.write{
                realm.deleteAll()
            }

        var empty:Element = Element()
            setElementProperties(empty, symbol: " ", name: "empty", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 0, period: 0)
        var one:Element = Element()
        setElementProperties(one,symbol: "1", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 1, period: 0)
        var two:Element = Element()
        setElementProperties(two, symbol: "2", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 2, period: 0)
        var three:Element = Element()
        setElementProperties(three, symbol: "3", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 3, period: 0)
        var four:Element = Element()
        setElementProperties(four, symbol: "4", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 4, period: 0)
        var five:Element = Element()
        setElementProperties(five, symbol: "5", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 5, period: 0)
        var six:Element = Element()
        setElementProperties(six, symbol: "6", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 6, period: 0)
        var seven:Element = Element()
        setElementProperties(seven, symbol: "7", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 7, period: 0)
        var eight:Element = Element()
        setElementProperties(eight, symbol: "8", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 8, period: 0)
        var nine:Element = Element()
        setElementProperties(nine, symbol: "9", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint: 7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 9, period: 0)
        var ten:Element = Element()
        setElementProperties(ten, symbol: "10", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 10, period: 0)
        var eleven:Element = Element()
        setElementProperties(eleven, symbol: "11", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 11, period: 0)
        var twelve:Element = Element()
        setElementProperties(twelve, symbol: "12", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 12, period: 0)
        var thirteen:Element = Element()
        setElementProperties(thirteen, symbol: "13", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 13, period: 0)
        var fourteen:Element = Element()
        setElementProperties(fourteen, symbol: "14", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 14, period: 0)
        var fifteen:Element = Element()
        setElementProperties(fifteen, symbol: "15", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 15, period: 0)
        var sixteen:Element = Element()
        setElementProperties(sixteen, symbol: "16", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 16, period: 0)
        var seventeen:Element = Element()
        setElementProperties(seventeen, symbol: "17", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 17, period: 0)
        var eighteen:Element = Element()
        setElementProperties(eighteen, symbol: "18", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "", group: 18, period: 0)
        
        var H:Element = Element()
        setElementProperties(H,symbol: "H", name: "水素", number: 1, massNumber: 1.008, state: "気体", meltingPoint:-259, boilingPoint:-253, ionization: 1312.0, affinity: 72, orbit: "K1", category: "典型非金属元素", group: 1, period: 1)
        var He:Element = Element()
        setElementProperties(He, symbol: "He", name: "ヘリウム", number: 2, massNumber: 4.002, state: "気体", meltingPoint:-272, boilingPoint: -269, ionization: 2372.3, affinity: -48, orbit: "K2", category: "希ガス元素", group: 18, period: 1)
        var Li:Element = Element()
        setElementProperties(Li, symbol: "Li", name: "リチウム", number: 3, massNumber: 6.94, state: "個体", meltingPoint: 181, boilingPoint: 1347, ionization: 520.2, affinity: 60, orbit: "K2 L1", category: "アルカリ金属元素", group: 1, period: 2)
        var Be:Element = Element()
        setElementProperties(Be, symbol: "Be", name: "ベリリウム", number: 4, massNumber: 9.012, state: "個体", meltingPoint: 1287, boilingPoint: 2472, ionization: 899.5, affinity: 0, orbit: "K2 L2", category: "アルカリ土類金属元素", group: 2, period: 2)
        var B:Element = Element()
        setElementProperties(B,symbol: "B", name: "ホウ素", number: 5, massNumber: 10.81, state: "個体", meltingPoint: 2077, boilingPoint: 3870,  ionization: 800.6, affinity: 27, orbit: "K2 L3", category: "典型半金属元素", group: 13, period: 2)
        var C:Element = Element()
        setElementProperties(C, symbol: "C", name: "炭素", number: 6, massNumber: 12.011, state: "個体", meltingPoint: 9999, boilingPoint: 3370, ionization: 1086.5, affinity: 122, orbit: "K2 L4", category: "典型非金属元素", group: 14, period: 2)
        var N:Element = Element()
        setElementProperties(N, symbol: "N", name: "窒素", number: 7, massNumber: 14.007, state: "気体", meltingPoint: -210, boilingPoint: -196, ionization: 1402.3, affinity: -8, orbit: "K2 L5", category: "典型非金属元素", group: 15, period: 2)
        var O:Element = Element()
        setElementProperties(O, symbol: "O", name: "酸素", number: 8, massNumber: 15.999, state: "気体", meltingPoint: -218, boilingPoint: -183, ionization: 1313.9, affinity: 141, orbit: "K2 L6", category: "典型非金属元素", group: 16, period: 2)
        var F:Element = Element()
        setElementProperties(F, symbol: "F", name: "フッ素", number: 9, massNumber: 18.998, state: "気体", meltingPoint: -220, boilingPoint: -188, ionization: 1681.0, affinity: 328, orbit: "K2 L7", category: "ハロゲン", group: 17, period: 2)
        var Ne:Element = Element()
        setElementProperties(Ne, symbol: "Ne", name: "ネオン", number: 10, massNumber: 20.179, state: "気体", meltingPoint: -249, boilingPoint: -246, ionization: 2080.7, affinity: -116, orbit: "K2 L8", category: "希ガス元素", group: 18, period: 2)
        var Na:Element = Element()
        setElementProperties(Na, symbol: "Na", name: "ナトリウム", number: 11, massNumber: 22.989, state: "個体", meltingPoint: 98, boilingPoint: 883, ionization: 495.8, affinity: 53, orbit: "K2 L8 M1", category: "アルカリ金属元素", group: 1, period: 3)
        var Mg:Element = Element()
        setElementProperties(Mg, symbol: "Mg", name: "マグネシウム", number: 12, massNumber: 24.305, state: "個体", meltingPoint: 650, boilingPoint: 1095, ionization: 737.7, affinity: 0, orbit: "K2 L8 M2", category: "アルカリ土類金属元素", group: 2, period: 3)
        var Al:Element = Element()
        setElementProperties(Al, symbol: "Al", name: "アルミニウム", number: 13, massNumber: 26.981, state: "個体", meltingPoint: 660, boilingPoint: 2520, ionization: 577.5, affinity: 43, orbit: "K2 L8 M3", category: "典型金属元素", group: 13, period: 3)
        var Si:Element = Element()
        setElementProperties(Si, symbol: "Si", name: "ケイ素", number: 14, massNumber: 28.085, state: "個体", meltingPoint: 1412, boilingPoint: 3266, ionization: 786.5, affinity: 134, orbit: "K2 L8 M4", category: "典型半金属元素", group: 14, period: 3)
        var P:Element = Element()
        setElementProperties(P, symbol: "P", name: "リン", number: 15, massNumber: 30.973, state: "個体", meltingPoint: 590, boilingPoint: 430, ionization: 1011.8, affinity: 72, orbit: "K2 L8 M5", category: "典型非金属元素", group: 15, period: 3)
        var S:Element = Element()
        setElementProperties(S, symbol: "S", name: "硫黄", number: 16, massNumber: 32.06, state: "個体", meltingPoint: 113, boilingPoint: 445, ionization: 999.6, affinity: 200, orbit: "K2 L8 M6", category: "典型非金属元素", group: 16, period: 3)
        var Cl:Element = Element()
        setElementProperties(Cl, symbol: "Cl", name: "塩素", number: 17, massNumber: 35.45, state: "気体", meltingPoint: -101, boilingPoint: -34, ionization: 1251.2, affinity: 349, orbit: "K2 L8 M7", category: "ハロゲン", group: 17, period: 3)
        var Ar:Element = Element()
        setElementProperties(Ar, symbol: "Ar", name: "アルゴン", number: 18, massNumber: 39.948, state: "気体", meltingPoint: -189, boilingPoint: -186, ionization: 1520.6, affinity: -96, orbit: "K2 L8 M8", category: "希ガス元素", group: 18, period: 3)
        var K:Element = Element()
            setElementProperties(K, symbol: "K", name: "カリウム", number: 19, massNumber: 39.098, state: "個体", meltingPoint: 64, boilingPoint: 765, ionization: 418.8, affinity: 48, orbit: "K2 L8 M8  N1", category: "アルカリ金属元素", group: 1, period: 4)
        var Ca:Element = Element()
        setElementProperties(Ca, symbol: "Ca", name: "カルシウム", number: 20, massNumber: 40.078, state: "個体", meltingPoint: 842, boilingPoint: 1503, ionization: 589.8, affinity: 2, orbit: "K2 L8 M8  N2", category: "アルカリ土類金属元素", group: 2, period: 4)
        var Sc:Element = Element()
        setElementProperties(Sc, symbol: "Sc", name: "スカンジウム", number: 21, massNumber: 44.955, state: "個体", meltingPoint: 1539, boilingPoint: 2831, ionization: 633.1, affinity: 18, orbit: "K2 L8 M9 N2", category: "遷移元素", group: 3, period: 4)
        var Ti:Element = Element()
        setElementProperties(Ti, symbol: "Ti", name: "チタン", number: 22, massNumber: 47.867, state: "個体", meltingPoint: 1666, boilingPoint: 3289, ionization: 658.8, affinity: 8, orbit: "K2 L8 M10N2", category: "遷移元素", group: 4, period: 4)
        var V:Element = Element()
        setElementProperties(V, symbol: "V", name: "バナジウム", number: 23, massNumber: 50.942, state: "個体", meltingPoint: 1917, boilingPoint: 3420, ionization: 650.9, affinity: 51, orbit: "K2 L8 M11N2", category: "遷移元素", group: 5, period: 4)
        var Cr:Element = Element()
        setElementProperties(Cr, symbol: "Cr", name: "クロム", number: 24, massNumber: 51.996, state: "個体", meltingPoint: 1857, boilingPoint: 2682, ionization: 652.9, affinity: 65, orbit: "K2 L8 M13N1", category: "遷移元素", group: 6, period: 4)
        var Mn:Element = Element()
        setElementProperties(Mn, symbol: "Mn", name: "マンガン", number: 25, massNumber: 54.938, state: "個体", meltingPoint: 1246, boilingPoint: 2062, ionization: 717.3, affinity: 0, orbit: "K2 L8 M13N2", category: "遷移元素", group: 7, period: 4)
        var Fe:Element = Element()
        setElementProperties(Fe, symbol: "Fe", name: "鉄", number: 26, massNumber: 55.845, state: "個体", meltingPoint: 1546, boilingPoint: 2863, ionization: 762.5, affinity: 15, orbit: "K2 L8 M14N2", category: "遷移元素", group: 8, period: 4)
        var Co = Element()
        setElementProperties(Co, symbol: "Co", name: "コバルト", number: 27, massNumber: 58.933, state: "個体", meltingPoint: 1495, boilingPoint: 2930, ionization: 760.4, affinity: 64, orbit: "K2 L8 M15N2", category: "遷移元素", group: 9, period: 4)
        var Ni = Element()
        setElementProperties(Ni, symbol: "Ni", name: "ニッケル", number: 28, massNumber: 58.693, state: "個体", meltingPoint: 1455, boilingPoint: 2890, ionization: 737.1, affinity: 112, orbit: "K2 L8 M16N2", category: "遷移元素", group: 10, period: 4)
        var Cu = Element()
        setElementProperties(Cu, symbol: "Cu", name: "銅", number: 29, massNumber: 63.546, state: "個体", meltingPoint: 1085, boilingPoint: 2571, ionization: 745.5, affinity: 119, orbit: "K2 L8 M18N1", category: "遷移元素", group: 11, period: 4)
        var Zn = Element()
        setElementProperties(Zn, symbol: "Zn", name: "亜鉛", number: 30, massNumber: 65.38, state: "個体", meltingPoint: 420, boilingPoint: 907, ionization: 906.4, affinity: 0, orbit: "K2 L8 M18N2", category: "遷移元素", group: 12, period: 4)
        var Ga = Element()
        setElementProperties(Ga, symbol: "Ga", name: "ガリウム", number: 31, massNumber: 69.723, state: "個体", meltingPoint: 30, boilingPoint: 2208, ionization: 578.8, affinity: 41, orbit: "K2 L8 M18N3", category: "典型金属元素", group: 13, period: 4)
        var Ge = Element()
        setElementProperties(Ge, symbol: "Ge", name: "ゲルマニウム", number: 32, massNumber: 72.63, state: "個体", meltingPoint: 937, boilingPoint: 2834, ionization: 762, affinity: 119, orbit: "K2 L8 M18N4", category: "典型半金属元素", group: 14, period: 4)
        var As = Element()
        setElementProperties(As, symbol: "As", name: "ヒ素", number: 33, massNumber: 74.921, state: "固定", meltingPoint: 817, boilingPoint: 603, ionization: 947.0, affinity: 79, orbit: "K2 L8 M18N5", category: "典型半金属元素", group: 15, period: 4)
        var Se = Element()
        setElementProperties(Se, symbol: "Se", name: "セレン", number: 34, massNumber: 78.971, state: "固定", meltingPoint: 220, boilingPoint: 685, ionization: 941.0, affinity: 195, orbit: "K2 L8 M18N6", category: "典型非金属元素", group: 16, period: 4)
        var Br = Element()
        setElementProperties(Br, symbol: "Br", name: "臭素", number: 35, massNumber: 79.904, state: "液体", meltingPoint: -7, boilingPoint: 59, ionization: 1139.9, affinity: 314, orbit: "K2 L8 M18N7", category: "ハロゲン", group: 17, period: 4)
        var Kr = Element()
        setElementProperties(Kr, symbol: "Kr", name: "クリプトン", number: 36, massNumber: 83.798, state: "気体", meltingPoint: -157, boilingPoint: -153, ionization: 1350.8, affinity: -96, orbit: "K2 L8 M18N8 ", category: "希ガス元素", group: 18, period: 4)
        var Rb = Element()
        setElementProperties(Rb, symbol: "Rb", name: "ルビジウム", number: 37, massNumber: 85.468, state: "個体", meltingPoint: 39, boilingPoint: 688, ionization: 403.0, affinity: 47, orbit: "K2 L8 M18N8 O1", category: "アルカリ金属元素", group: 1, period: 5)
        var Sr = Element()
        setElementProperties(Sr, symbol: "Sr", name: "スロトンチウム", number: 38, massNumber: 87.62, state: "個体", meltingPoint: 777, boilingPoint: 1414, ionization: 549.5, affinity: 5, orbit: "K2 L8 M18N8 O2", category: "アルカリ土類金属元素", group: 2, period: 5)
        var Y = Element()
        setElementProperties(Y, symbol: "Y", name: "イットリウム", number: 39, massNumber: 88.906, state: "", meltingPoint: 1520, boilingPoint: 3388, ionization: 600, affinity: 30, orbit: "K2 L8 M18N9 O2", category: "遷移元素", group: 3, period: 5)
        var Zr = Element()
        setElementProperties(Zr, symbol: "Zr", name:"ジルコニウム", number: 40, massNumber: 91.224, state: "", meltingPoint: 1852, boilingPoint: 4361, ionization: 640.1, affinity: 41, orbit: "K2 L8 M18N10O2", category: "遷移元素", group: 4, period: 5)
        var Nb = Element()
        setElementProperties(Nb, symbol: "Nb", name: "ニオブ", number: 41, massNumber: 92.906, state: "", meltingPoint: 2469, boilingPoint: 4927, ionization: 652.1, affinity: 86, orbit: "K2 L8 M18N12O1", category: "遷移元素", group: 5, period: 5)
        var Mo = Element()
        setElementProperties(Mo, symbol: "Mo", name: "モリブデン", number: 42, massNumber: 95.95, state: "", meltingPoint: 2623, boilingPoint: 4682, ionization: 684.3, affinity: 72, orbit: "K2 L8 M18N13O1", category: "遷移元素", group: 6, period: 5)
        var Tc = Element()
        setElementProperties(Tc, symbol: "Tc", name: "テクネチウム", number: 43, massNumber: 98, state: "", meltingPoint: 2157, boilingPoint: 4265, ionization: 702, affinity: 53, orbit: "K2 L8 M18N13O2", category: "遷移元素", group: 7, period: 5)
        var Ru = Element()
        setElementProperties(Ru, symbol: "Ru", name: "ルテニウム", number: 44, massNumber: 101.07, state: "", meltingPoint: 2250, boilingPoint: 4155, ionization: 710.2, affinity: 101, orbit: "K2 L8 M18N15O1", category: "遷移元素", group: 8, period: 5)
        var Rh = Element()
        setElementProperties(Rh, symbol: "Rh", name: "ロジウム", number: 45, massNumber: 102.906, state: "", meltingPoint: 1960, boilingPoint: 3697, ionization: 719.7, affinity: 110, orbit: "K2 L8 M18N16O1", category: "遷移元素", group: 9, period: 5)
        var Pd = Element()
        setElementProperties(Pd, symbol: "Pd", name: "パラジウム", number: 46, massNumber: 106.42, state: "", meltingPoint: 1552, boilingPoint: 2964, ionization: 804.4, affinity: 54, orbit: "K2 L8 M18N18", category: "遷移元素", group: 10, period: 5)
        var Ag = Element()
        setElementProperties(Ag, symbol: "Ag", name: "銀", number: 47, massNumber: 107.868, state: "", meltingPoint: 962, boilingPoint: 2162, ionization: 731.0, affinity: 126, orbit: "K2 L8 M18N18O1", category: "遷移元素", group: 11, period: 5)
        var Cd = Element()
        setElementProperties(Cd, symbol: "Cd", name: "カドミウム", number: 48, massNumber: 112.414, state: "", meltingPoint: 321, boilingPoint: 767, ionization: 867.8, affinity: 0, orbit: "K2 L8 M18N18O2", category: "遷移元素", group: 12, period: 5)
        var In = Element()
        setElementProperties(In, symbol: "In", name: "インジウム", number: 49, massNumber: 114.818, state: "", meltingPoint: 157, boilingPoint: 2072, ionization: 558.3, affinity: 39, orbit: "K2 L8 M18N18O3", category: "典型金属元素", group: 13, period: 5)
        var Sn = Element()
        setElementProperties(Sn, symbol: "Sn", name: "スズ", number: 50, massNumber: 118.710, state: "", meltingPoint: 232, boilingPoint: 2603, ionization: 708.6, affinity: 107, orbit: "K2 L8 M18N18O4", category: "典型金属元素", group: 14, period: 5)
        var Sb = Element()
        setElementProperties(Sb, symbol: "Sb", name: "アンチモン", number: 51, massNumber: 121.760, state: "", meltingPoint: 631, boilingPoint: 1587, ionization: 834, affinity: 101, orbit: "K2 L8 M18N18O5", category: "典型半金属元素", group: 15, period: 5)
        var Te = Element()
        setElementProperties(Te, symbol: "Te", name: "テルル", number: 52, massNumber: 127.60, state: "", meltingPoint: 450, boilingPoint: 991, ionization: 869.3, affinity: 190, orbit: "K2 L8 M18N18O6", category: "典型半金属元素", group: 16, period: 5)
        var I = Element()
        setElementProperties(I, symbol: "I", name: "ヨウ素", number: 53, massNumber: 126.904, state: "", meltingPoint: 114, boilingPoint: 184, ionization: 1008.4, affinity: 295, orbit: "K2 L8 M18N18O7", category: "ハロゲン", group: 17, period: 5)
        var Xe = Element()
        setElementProperties(Xe, symbol: "Xe", name: "キセノン", number: 54, massNumber: 131.293, state: "", meltingPoint: -112, boilingPoint: -108, ionization: 1170.4, affinity: -77, orbit: "K2 L8 M18N18O8", category: "希ガス元素", group: 18, period: 5)
        var Cs = Element()
        setElementProperties(Cs, symbol: "Cs", name: "セシウム", number: 55, massNumber: 132.905, state: "", meltingPoint: 28, boilingPoint: 658, ionization: 375.7, affinity: 46, orbit: "K2 L8 M18N18O8 P1", category: "アルカリ金属元素", group: 1, period: 6)
        var Ba = Element()
        setElementProperties(Ba, symbol: "Ba", name: "バリウム", number: 56, massNumber: 137.327, state: "", meltingPoint: 729, boilingPoint: 1898, ionization: 502.9, affinity: 14, orbit: "K2 L8 M18N18O8 P2", category: "アルカリ土類金属元素", group: 2, period: 6)
        var La = Element()
        setElementProperties(La, symbol: "La", name: "ランタン", number: 57, massNumber: 138.905, state: "", meltingPoint: 920, boilingPoint: 3461, ionization: 538.1, affinity: 48, orbit: "K2 L8 M18N18O9 P2", category: "ランタノイド", group: 3, period: 6)
        var Hf = Element()
        setElementProperties(Hf, symbol: "Hf", name: "ハフニウム", number: 72, massNumber: 178.49, state: "", meltingPoint: 2231, boilingPoint: 4602, ionization: 658.5, affinity: 0, orbit: "K2 L8 M18N31O10P2", category: "遷移元素", group: 4, period: 6)
        var Ta = Element()
        setElementProperties(Ta, symbol: "Ta", name: "タンタル", number: 73, massNumber: 180.948, state: "", meltingPoint: 2985, boilingPoint: 5510, ionization: 761, affinity: 31, orbit: "K2 L8 M18N31O11P2", category: "遷移元素", group: 5, period: 6)
        var W = Element()
        setElementProperties(W, symbol: "W", name: "タングステン", number: 74, massNumber: 183.84, state: "", meltingPoint: 3407, boilingPoint: 5555, ionization: 770, affinity: 79, orbit: "K2 L8 M18N31O12P2", category: "遷移元素", group: 6, period: 6)
        var Re = Element()
        setElementProperties(Re, symbol: "Re", name: "レニウム", number: 75, massNumber: 186.207, state: "", meltingPoint: 3180, boilingPoint: 5596, ionization: 760, affinity: 14, orbit: "K2 L8 M18N31O13P2", category: "遷移元素", group: 7, period: 6)
        var Os = Element()
        setElementProperties(Os, symbol: "Os", name: "オスミウム", number: 76, massNumber: 190.23, state: "", meltingPoint: 3045, boilingPoint: 5012, ionization: 840, affinity: 104, orbit: "K2 L8 M18N31O14P2", category: "遷移元素", group: 8, period: 6)
        var Ir = Element()
        setElementProperties(Ir, symbol: "Ir", name: "イリジウム", number: 77, massNumber:192.217, state: "", meltingPoint: 2443, boilingPoint: 4437, ionization: 880, affinity: 150, orbit: "K2 L8 M18N31O15P2", category: "遷移元素", group: 9, period: 6)
        var Pt = Element()
        setElementProperties(Pt, symbol: "Pt", name: "白金", number: 78, massNumber: 195.084, state: "", meltingPoint: 1769, boilingPoint: 3827, ionization: 870, affinity: 205, orbit: "K2 L8 M18N31O17P1", category: "遷移元素", group: 10, period: 6)
        var Au = Element()
        setElementProperties(Au, symbol: "Au", name: "金", number: 79, massNumber: 196.967, state: "", meltingPoint: 1064, boilingPoint: 2857, ionization: 890.1, affinity: 223, orbit: "K2 L8 M18N31O18P1", category: "遷移元素", group: 11, period: 6)
        var Hg = Element()
        setElementProperties(Hg, symbol: "Hg", name: "水銀", number: 80, massNumber: 200.59, state: "", meltingPoint: -39, boilingPoint: 357, ionization: 1007.1, affinity: 0, orbit: "K2 L8 M18N31O18P2", category: "遷移元素", group: 12, period: 6)
        var Tl = Element()
        setElementProperties(Tl, symbol: "Tl", name: "タリウム", number: 81, massNumber: 204.38, state: "", meltingPoint: 304, boilingPoint: 1473, ionization: 589.4, affinity: 36, orbit: "K2 L8 M18N31O18P3", category: "典型金属元素", group: 13, period: 6)
        var Pb = Element()
        setElementProperties(Pb, symbol: "Pb", name: "鉛", number: 82, massNumber: 207.2, state: "", meltingPoint: 328, boilingPoint: 1750, ionization: 715.6, affinity: 35, orbit: "K2 L8 M18N31O18P4", category: "典型金属元素", group: 14, period: 6)
        var Bi = Element()
        setElementProperties(Bi, symbol: "Bi", name: "ビスマス", number: 83, massNumber: 208.980, state: "", meltingPoint: 271, boilingPoint: 1561, ionization: 703, affinity: 91, orbit: "K2 L8 M18N31O18P5", category: "典型金属元素", group: 15, period: 6)
        var Po = Element()
        setElementProperties(Po, symbol: "Po", name: "ポロニウム", number: 84, massNumber: 209, state: "", meltingPoint: 254, boilingPoint: 962, ionization: 812.1, affinity: 183, orbit: "K2 L8 M18N31O18P6", category: "典型半金属元素", group: 16, period: 6)
        var At = Element()
        setElementProperties(At, symbol: "At", name: "アスタチン", number: 85, massNumber: 210, state: "", meltingPoint: 302, boilingPoint: 337, ionization: 890, affinity: 270, orbit: "K2 L8 M18N31O18P7", category: "ハロゲン", group: 17, period: 6)
        var Rn = Element()
        setElementProperties(Rn, symbol: "Rn", name: "ラドン", number: 86, massNumber: 222, state: "", meltingPoint: -71, boilingPoint: -62, ionization: 1037, affinity: 0, orbit: "K2 L8 M18N31O18P8", category: "希ガス元素", group: 18, period: 6)
        var Fr = Element()
        setElementProperties(Fr, symbol: "Fr", name: "フランシウム", number: 87, massNumber: 223, state: "", meltingPoint: 27, boilingPoint: 677, ionization: 380, affinity: 9999, orbit: "K2 L8 M18N31O18P8 Q1", category: "アルカリ金属元素", group: 1, period: 7)
        var Ra = Element()
        setElementProperties(Ra,symbol: "Ra", name: "ラジウム", number: 88, massNumber: 226, state: "", meltingPoint: 700, boilingPoint: 1140, ionization: 509.3, affinity: 9999, orbit: "K2 L8 M18N31O18P8 Q2", category: "アルカリ土類金属元素", group: 2, period: 7)
        var Ac = Element()
        setElementProperties(Ac, symbol: "Ac", name: "アクチニウム", number: 89, massNumber: 227, state: "", meltingPoint: 1050, boilingPoint: 3197, ionization: 499, affinity: 9999, orbit: "K2 L8 M18N31O18P9 Q2", category: "アクチノイド", group: 3, period: 7)
        var Ce = Element()
        setElementProperties(Ce, symbol: "Ce", name: "セリウム", number: 58, massNumber: 140.116, state: "個体", meltingPoint: 795, boilingPoint: 2527, ionization: 534.4, affinity: 92, orbit: "K2 L8 M18N19O9 P2", category: "ランタノイド", group: 4, period: 8)
            var Pr = Element()
            setElementProperties(Pr, symbol: "Pr", name: "プラセオジム", number: 59, massNumber: 140.908, state: "個体", meltingPoint: 931, boilingPoint: 3512, ionization: 527, affinity: 9999, orbit: "K2 L8 M18N21O8 P2", category: "ランタノイド", group: 5, period: 8)
            var Nd = Element()
            setElementProperties(Nd, symbol: "Nd", name: "ネオジム", number: 60, massNumber: 144.242, state: "個体", meltingPoint: 1021, boilingPoint: 3074, ionization: 533.1, affinity: 9999, orbit: "K2 L8 M18N22O8 P2", category: "ランタノイド", group: 6, period: 8)
            var Pm = Element()
            setElementProperties(Pm, symbol: "Pm", name: "プロメチウム", number: 61, massNumber: 145, state: "個体", meltingPoint: 1042, boilingPoint: 3000, ionization: 540, affinity: 9999, orbit: "K2 L8 M18N23O8 P2", category: "ランタノイド", group: 7, period: 8)
            var Sm = Element()
            setElementProperties(Sm, symbol: "Sm", name: "サマリウム", number: 62, massNumber: 150.36, state: "個体", meltingPoint: 1074, boilingPoint: 1794, ionization: 544.5, affinity: 9999, orbit: "K2 L8 M18N24O8 P2", category: "ランタノイド", group: 8, period: 8)
            var Eu = Element()
            setElementProperties(Eu, symbol: "Eu", name: "ユウロピウム", number: 63, massNumber: 151.964, state: "個体", meltingPoint: 826, boilingPoint: 1529, ionization: 547.1, affinity: 9999, orbit: "K2 L8 M18N25O8 P2", category: "ランタノイド", group: 9, period: 8)
            var Gd = Element()
            setElementProperties(Gd, symbol: "Gd", name: "ガドリニウム", number: 64, massNumber: 157.25, state: "個体", meltingPoint: 1312, boilingPoint: 3272, ionization: 593.4, affinity: 9999, orbit: "K2 L8 M18N25O9 P2", category: "ランタノイド", group: 10, period: 8)
            var Tb = Element()
            setElementProperties(Tb, symbol: "Tb", name: "テルビウム", number: 65, massNumber: 158.925, state: "個体", meltingPoint: 1356, boilingPoint: 3227, ionization: 565.8, affinity: 9999, orbit: "K2 L8 M18N27O8 P2", category: "ランタノイド", group: 11, period: 8)
            var Dy = Element()
            setElementProperties(Dy, symbol: "Dy", name: "ジスプロシウム", number: 66, massNumber: 162.500, state: "個体", meltingPoint: 1412, boilingPoint: 2567, ionization: 573.0, affinity: 9999, orbit: "K2 L8 M18N28O8 P2", category: "ランタノイド", group: 12, period: 8)
            var Ho = Element()
            setElementProperties(Ho, symbol: "Ho", name: "ホルミウム", number: 67, massNumber: 164.903, state: "個体", meltingPoint: 1474, boilingPoint: 2695, ionization: 581.0, affinity: 9999, orbit: "K2 L8 M18N29O8 P2", category: "ランタノイド", group: 13, period: 8)
            var Er = Element()
            setElementProperties(Er, symbol: "Er", name: "エルビウム", number: 68, massNumber: 167.259, state: "個体", meltingPoint: 1529, boilingPoint: 2867, ionization: 589.3, affinity: 9999, orbit: "K2 L8 M18N30O8 P2", category: "ランタノイド", group: 14, period: 8)
            var Tm = Element()
            setElementProperties(Tm, symbol: "Tm", name: "ツリウム", number: 69, massNumber: 168.934, state: "個体", meltingPoint: 1545, boilingPoint: 1730, ionization: 596.7, affinity: 99, orbit: "K2 L8 M18N31O8 P2", category: "ランタノイド", group: 15, period: 8)
            var Yb = Element()
            setElementProperties(Yb, symbol: "Yb", name: "イッテルビウム", number: 70, massNumber: 173.054, state: "個体", meltingPoint: 824, boilingPoint: 1196, ionization: 603.4, affinity: 9999, orbit: "K2 L8 M18N32O8 P2", category: "ランタノイド", group: 16, period: 8)
            var Lu = Element()
            setElementProperties(Lu, symbol: "Lu", name: "ルテチウム", number: 71, massNumber: 174.967, state: "個体", meltingPoint: 1652, boilingPoint: 3402, ionization: 523.5, affinity: 33, orbit: "K2 L8 M18N32O9 P2", category: "ランタノイド", group: 17, period: 8)
            var Th = Element()
            setElementProperties(Th, symbol: "Th", name: "トリウム", number: 90, massNumber: 232.038, state: "個体", meltingPoint: 1842, boilingPoint: 4788, ionization: 587, affinity: 9999, orbit: "K2 L8 M18N31O18P10Q2", category: "アクチノイド", group: 4, period: 9)
            var Pa = Element()
            setElementProperties(Pa, symbol: "Pa", name: "プロトアクチニウム", number: 91, massNumber: 231.036, state: "個体", meltingPoint: 1568, boilingPoint: 4027, ionization: 568, affinity: 9999, orbit: "K2 L8 M18N31O20P9 Q2", category: "アクチノイド", group: 5, period: 9)
            var U = Element()
            setElementProperties(U, symbol: "U", name: "ウラン", number: 92, massNumber: 238.029, state: "個体", meltingPoint: 1132, boilingPoint: 4131, ionization: 597.6, affinity: 9999, orbit: "K2 L8 M18N31O21P9 Q2", category: "アクチノイド", group: 6, period: 9)
            var Np = Element()
            setElementProperties(Np, symbol: "Np", name: "ネプツニウム", number: 93, massNumber: 237, state: "個体", meltingPoint: 637, boilingPoint: 4000, ionization: 604.5, affinity: 9999, orbit: "K2 L8 M18N31O22P9 Q2", category: "アクチノイド", group: 7, period: 9)
            var Pu = Element()
            setElementProperties(Pu, symbol: "Pu", name: "プルトニウム", number: 94, massNumber: 244, state: "個体", meltingPoint: 639, boilingPoint: 3228, ionization: 584.7, affinity: 9999, orbit: "K2 L8 M18N31O24P8 Q2", category: "アクチノイド", group: 8, period: 9)
            var Am = Element()
            setElementProperties(Am, symbol: "Am", name: "アメリシウム", number: 95, massNumber: 243, state: "個体", meltingPoint: 1176, boilingPoint: 2607, ionization: 578, affinity: 9999, orbit: "K2 L8 M18N31O25P8 Q2", category: "アクチノイド", group: 9, period: 9)
            var Cm = Element()
            setElementProperties(Cm, symbol: "Cm", name: "キュリウム", number: 96, massNumber: 247, state: "個体", meltingPoint: 1340, boilingPoint: 3110, ionization: 581, affinity: 9999, orbit: "K2 L8 M18N31O25P9 Q2", category: "アクチノイド", group: 10, period: 9)
            var Bk = Element()
            setElementProperties(Bk, symbol: "Bk", name: "バークリウム", number: 97, massNumber: 247, state: "個体", meltingPoint: 985, boilingPoint: 710, ionization: 601, affinity: 9999, orbit: "K2 L8 M18N31O27P8 Q2", category: "アクチノイド", group: 11, period: 9)
            var Cf = Element()
            setElementProperties(Cf, symbol: "Cf", name: "カリホルニウム", number: 98, massNumber: 251, state: "個体", meltingPoint: 899, boilingPoint: 1472, ionization: 608, affinity: 9999, orbit: "K2 L8 M18N31O28P8 Q2", category: "アクチノイド", group: 12, period: 9)
            var Es = Element()
            setElementProperties(Es, symbol: "Es", name: "アインスタイニウム", number: 99, massNumber: 252, state: "個体", meltingPoint: 860, boilingPoint: 9999, ionization: 619, affinity: 9999, orbit: "K2 L8 M18N31O29P8 Q2", category: "アクチノイド", group: 13, period: 9)
            var Fm = Element()
            setElementProperties(Fm, symbol: "Fm", name: "フェルミウム", number: 100, massNumber: 257, state: "個体", meltingPoint: 1527, boilingPoint: 9999, ionization: 627, affinity: 9999, orbit: "K2 L8 M18N31O30P8 Q2", category: "アクチノイド", group: 14, period: 9)
            var Md = Element()
            setElementProperties(Md, symbol: "Md", name: "メンデレビウム", number: 101, massNumber: 258, state: "個体", meltingPoint: 827, boilingPoint: 9999, ionization: 635, affinity: 9999, orbit: "K2 L8 M18N31O31P8 Q2", category: "アクチノイド", group: 15, period: 9)
            var No = Element()
            setElementProperties(No, symbol: "No", name: "ノーベリウム", number: 102, massNumber: 259, state: "個体", meltingPoint: 827, boilingPoint: 9999, ionization: 642, affinity: 9999, orbit: "K2 L8 M18N31O32P8 Q2", category: "アクチノイド", group: 16, period: 9)
            var Lr = Element()
            setElementProperties(Lr, symbol: "Lr", name: "ローレンシウム", number: 103, massNumber: 262, state: "個体", meltingPoint: 1627, boilingPoint: 9999, ionization: 470, affinity: 9999, orbit: "K2 L8 M18N31O32P8 Q3", category: "アクチノイド", group: 17, period: 9)
                
            elements = [empty, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen ,seventeen, eighteen, H, Li, Na, K, Rb, Cs, Fr, Be, Mg, Ca, Sr, Ba, Ra, Sc, Y, La, Ac, Ti, Zr, Hf, V, Nb, Ta,Cr, Mo, W, Mn, Tc, Re, Fe, Ru, Os, Co, Rh, Ir, Ni, Pd, Pt, Cu, Ag, Au, Zn, Cd, Hg, B, Al, Ga, In, Tl, C, Si, Ge, Sn, Pb, N, P, As, Sb, Bi, O, S, Se, Te, Po, F, Cl, Br, I, At, He, Ne, Ar, Kr, Xe, Rn, Ce, Pr, Nd, Pm, Sm, Eu, Gd, Tb, Dy, Ho, Er, Tm, Yb, Lu, Th, Pa, U, Np, Pu, Am, Cm, Bk, Cf, Es, Fm, Md, No, Lr]
            println(elements.count)
            realm.write {
                for i in 0...elements.count-1 {
                    realm.add(elements[i])
                }
            }
        }
                    println(realm.objects(Element))
    }
    func setElementProperties(element: Element, symbol: String, name: String, number: Int, massNumber: Double,state: String, meltingPoint: Int, boilingPoint: Int, ionization: Double, affinity: Int, orbit: String, category: String, group: Int, period: Int) {
        element.symbol = symbol
        element.name = name
        element.number = number
        element.massNumber = massNumber
        element.state = state
        element.meltingPoint = meltingPoint
        element.boilingPoint = boilingPoint
        element.ionization = ionization
        element.affinity = affinity
        element.orbit = orbit
        element.category = category
        element.group = group
        element.period = period
    }
    func readElement(group: Int, period: Int, cell: [Int]) -> Element {
        let realm = Realm()
        let elements = realm.objects(Element)
        if cell[0] == 3 {
            if cell[1] == 6 {
                if period == 6 && 4 <= group && group <= 17 {
                    return elements.filter(NSPredicate(format:"group == %d AND period == %d", group, period+2)).first!
                }
            }else if cell[1] == 7 {
                if period == 7 && 4 <= group && group <= 17 {
                    return elements.filter(NSPredicate(format:"group == %d AND period == %d", group, period+2)).first!
                }
            }
        }
        if self.isLanthanide {
            if group > 3 && group < 18 && period == 6 {
                return elements.filter(NSPredicate(format:"group == %d AND period == %d", group, period+2)).first!
            }
        }else if self.isActinide {
            if group > 3 && group < 18 && period == 7 {
                return elements.filter(NSPredicate(format:"group == %d AND period == %d", group, period+2)).first!
            }
        }
        
        if group == 0 && period == 0 {
            return elements.filter(NSPredicate(format:"name = %@", "empty")).first! ?? Element()
        }else if group == 0 {
            return elements.filter(NSPredicate(format:"symbol = %@", String(period))).first! ?? Element()
        }else if period == 0 {
            return elements.filter(NSPredicate(format:"symbol = %@", String(group))).first! ?? Element()
        }else {
            let element = elements.filter(NSPredicate(format:"group == %d AND period == %d", group, period))
            if element.count == 0 {
                return elements.filter(NSPredicate(format:"name = %@", "empty")).first! ?? Element()
            }else {
                return element.first! ?? Element()
            }
        }
    }
}
