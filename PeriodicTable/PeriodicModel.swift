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
        
        var empty:Element = Element(symbol: " ", name: "empty", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var one:Element = Element(symbol: "1", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var two:Element = Element(symbol: "2", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var three:Element = Element(symbol: "3", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var four:Element = Element(symbol: "4", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var five:Element = Element(symbol: "5", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var six:Element = Element(symbol: "6", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var seven:Element = Element(symbol: "7", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var eight:Element = Element(symbol: "8", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var nine:Element = Element(symbol: "9", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var ten:Element = Element(symbol: "10", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var eleven:Element = Element(symbol: "11", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var twelve:Element = Element(symbol: "12", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var thirteen:Element = Element(symbol: "13", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var fourteen:Element = Element(symbol: "14", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var fifteen:Element = Element(symbol: "15", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var sixteen:Element = Element(symbol: "16", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var seventeen:Element = Element(symbol: "17", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        var eighteen:Element = Element(symbol: "18", name: "num", number: 0, massNumber: 0,state:" ", meltingPoint:7000, boilingPoint:7000, ionization:0.0, affinity:0, orbit:" ", category: "")
        
        var H:Element = Element(symbol: "H", name: "水素", number: 1, massNumber: 1.008, state: "気体", meltingPoint:-259, boilingPoint:-253, ionization: 1312.0, affinity: 72, orbit: "K1", category: "典型元素")
        var He:Element = Element(symbol: "He", name: "ヘリウム", number: 2, massNumber: 4.002, state: "気体", meltingPoint:-272, boilingPoint: -269, ionization: 2372.3, affinity: -48, orbit: "K2", category: "希ガス元素")
        var Li:Element = Element(symbol: "Li", name: "リチウム", number: 3, massNumber: 6.94, state: "個体", meltingPoint: 181, boilingPoint: 1347, ionization: 520.2, affinity: 60, orbit: "K2L1", category: "アルカリ金属元素")
        var Be:Element = Element(symbol: "Be", name: "ベリリウム", number: 4, massNumber: 9.012, state: "個体", meltingPoint: 1287, boilingPoint: 2472, ionization: 899.5, affinity: 0, orbit: "K2L2", category: "アルカリ土類金属元素")
        var B:Element = Element(symbol: "B", name: "ホウ素", number: 5, massNumber: 10.81, state: "個体", meltingPoint: 2077, boilingPoint: 3870, ionization: 800.6, affinity: 27, orbit: "K2L3", category: "典型元素")
        var C:Element = Element(symbol: "C", name: "炭素", number: 6, massNumber: 12.011, state: "個体", meltingPoint: 9999, boilingPoint: 3370, ionization: 1086.5, affinity: 122, orbit: "K2L4", category: "典型元素")
        var N:Element = Element(symbol: "N", name: "窒素", number: 7, massNumber: 14.007, state: "気体", meltingPoint: -210, boilingPoint: -196, ionization: 1402.3, affinity: -8, orbit: "K2L5", category: "典型元素")
        var O:Element = Element(symbol: "O", name: "酸素", number: 8, massNumber: 15.999, state: "気体", meltingPoint: -218, boilingPoint: -183, ionization: 1313.9, affinity: 141, orbit: "K2L6", category: "典型元素")
        var F:Element = Element(symbol: "F", name: "フッ素", number: 9, massNumber: 18.998, state: "気体", meltingPoint: -220, boilingPoint: -188, ionization: 1681.0, affinity: 328, orbit: "K2L7", category: "ハロゲン")
        var Ne:Element = Element(symbol: "Ne", name: "ネオン", number: 10, massNumber: 20.179, state: "気体", meltingPoint: -249, boilingPoint: -246, ionization: 2080.7, affinity: -116, orbit: "K2L8", category: "希ガス元素")
        var Na:Element = Element(symbol: "Na", name: "ナトリウム", number: 11, massNumber: 22.989, state: "個体", meltingPoint: 98, boilingPoint: 883, ionization: 495.8, affinity: 53, orbit: "K2L8M1", category: "アルカリ金属元素")
        var Mg:Element = Element(symbol: "Mg", name: "マグネシウム", number: 12, massNumber: 24.305, state: "個体", meltingPoint: 650, boilingPoint: 1095, ionization: 737.7, affinity: 0, orbit: "K2L8M2", category: "アルカリ土類金属元素")
        var Al:Element = Element(symbol: "Al", name: "アルミニウム", number: 13, massNumber: 26.981, state: "個体", meltingPoint: 660, boilingPoint: 2520, ionization: 577.5, affinity: 43, orbit: "K2L8M3", category: "典型元素")
        var Si:Element = Element(symbol: "Si", name: "ケイ素", number: 14, massNumber: 28.085, state: "個体", meltingPoint: 1412, boilingPoint: 3266, ionization: 786.5, affinity: 134, orbit: "K2L8M4", category: "典型元素")
        var P:Element = Element(symbol: "P", name: "リン", number: 15, massNumber: 30.973, state: "個体", meltingPoint: 590, boilingPoint: 430, ionization: 1011.8, affinity: 72, orbit: "K2L8M5", category: "典型元素")
        var S:Element = Element(symbol: "S", name: "硫黄", number: 16, massNumber: 32.06, state: "個体", meltingPoint: 113, boilingPoint: 445, ionization: 999.6, affinity: 200, orbit: "K2L8M6", category: "典型元素")
        var Cl:Element = Element(symbol: "Cl", name: "塩素", number: 17, massNumber: 35.45, state: "気体", meltingPoint: -101, boilingPoint: -34, ionization: 1251.2, affinity: 349, orbit: "K2L8M7", category: "ハロゲン")
        var Ar:Element = Element(symbol: "Ar", name: "アルゴン", number: 18, massNumber: 39.948, state: "気体", meltingPoint: -189, boilingPoint: -186, ionization: 1520.6, affinity: -96, orbit: "K2L8M8", category: "希ガス元素")
        var K:Element = Element(symbol: "K", name: "カリウム", number: 19, massNumber: 39.098, state: "個体", meltingPoint: 64, boilingPoint: 765, ionization: 418.8, affinity: 48, orbit: "K2L8M8N1", category: "アルカリ金属元素")
        var Ca:Element = Element(symbol: "Ca", name: "カルシウム", number: 20, massNumber: 40.078, state: "個体", meltingPoint: 842, boilingPoint: 1503, ionization: 589.8, affinity: 2, orbit: "K2L8M8N2", category: "アルカリ土類金属元素")
        var Sc:Element = Element(symbol: "Sc", name: "スカンジウム", number: 21, massNumber: 44.955, state: "個体", meltingPoint: 1539, boilingPoint: 2831, ionization: 633.1, affinity: 18, orbit: "K2L8M9N2", category: "典型元素")
        var Ti:Element = Element(symbol: "Ti", name: "チタン", number: 22, massNumber: 47.867, state: "個体", meltingPoint: 1666, boilingPoint: 3289, ionization: 658.8, affinity: 8, orbit: "K2L8M10N2", category: "遷移元素")
        var V:Element = Element(symbol: "V", name: "バナジウム", number: 23, massNumber: 50.942, state: "個体", meltingPoint: 1917, boilingPoint: 3420, ionization: 650.9, affinity: 51, orbit: "K2L8M11N2", category: "遷移元素")
        var Cr:Element = Element(symbol: "Cr", name: "クロム", number: 24, massNumber: 51.996, state: "個体", meltingPoint: 1857, boilingPoint: 2682, ionization: 652.9, affinity: 65, orbit: "K2L8M13N1", category: "遷移元素")
        var Mn:Element = Element(symbol: "Mn", name: "マンガン", number: 25, massNumber: 54.938, state: "個体", meltingPoint: 1246, boilingPoint: 2062, ionization: 717.3, affinity: 0, orbit: "K2L8M13N2", category: "遷移元素")
        var Fe:Element = Element(symbol: "Fe", name: "鉄", number: 26, massNumber: 55.845, state: "個体", meltingPoint: 1546, boilingPoint: 2863, ionization: 762.5, affinity: 15, orbit: "K2L8M14N2", category: "遷移元素")
        var Co = Element(symbol: "Co", name: "コバルト", number: 27, massNumber: 58.933, state: "個体", meltingPoint: 1495, boilingPoint: 2930, ionization: 760.4, affinity: 64, orbit: "K2L8M15N2", category: "遷移元素")
        var Ni = Element(symbol: "Ni", name: "ニッケル", number: 28, massNumber: 58.693, state: "個体", meltingPoint: 1455, boilingPoint: 2890, ionization: 737.1, affinity: 112, orbit: "K2L8M16N2", category: "遷移元素")
        var Cu = Element(symbol: "Cu", name: "銅", number: 29, massNumber: 63.546, state: "個体", meltingPoint: 1085, boilingPoint: 2571, ionization: 745.5, affinity: 119, orbit: "K2L8M18N1", category: "遷移元素")
        var Zn = Element(symbol: "Zn", name: "亜鉛", number: 30, massNumber: 65.38, state: "個体", meltingPoint: 420, boilingPoint: 907, ionization: 906.4, affinity: 0, orbit: "K2L8M18N2", category: "遷移元素")
        var Ga = Element(symbol: "Ga", name: "ガリウム", number: 31, massNumber: 69.723, state: "個体", meltingPoint: 30, boilingPoint: 2208, ionization: 578.8, affinity: 41, orbit: "K2L8M18N3", category: "典型元素")
        var Ge = Element(symbol: "Ge", name: "ゲルマニウム", number: 32, massNumber: 72.63, state: "個体", meltingPoint: 937, boilingPoint: 2834, ionization: 762, affinity: 119, orbit: "K2L8M18N4", category: "典型元素")
        var As = Element(symbol: "As", name: "ヒ素", number: 33, massNumber: 74.921, state: "固定", meltingPoint: 817, boilingPoint: 603, ionization: 947.0, affinity: 79, orbit: "K2L8M18N5", category: "典型元素")
        var Se = Element(symbol: "Se", name: "セレン", number: 34, massNumber: 78.971, state: "固定", meltingPoint: 220, boilingPoint: 685, ionization: 941.0, affinity: 195, orbit: "K2L8M18N6", category: "典型元素")
        var Br = Element(symbol: "Br", name: "臭素", number: 35, massNumber: 79.904, state: "液体", meltingPoint: -7, boilingPoint: 59, ionization: 1139.9, affinity: 314, orbit: "K2L8M18N7", category: "ハロゲン")
        var Kr = Element(symbol: "Kr", name: "クリプトン", number: 36, massNumber: 83.798, state: "気体", meltingPoint: -157, boilingPoint: -153, ionization: 1350.8, affinity: -96, orbit: "K2L8M18N8", category: "希ガス元素")
        var Rb = Element(symbol: "Rb", name: "ルビジウム", number: 37, massNumber: 85.468, state: "個体", meltingPoint: 39, boilingPoint: 688, ionization: 403.0, affinity: 47, orbit: "K2L8M18N8O1", category: "アルカリ金属元素")
        var Sr = Element(symbol: "Sr", name: "スロトンチウム", number: 38, massNumber: 87.62, state: "個体", meltingPoint: 777, boilingPoint: 1414, ionization: 549.5, affinity: 5, orbit: "K2L8M18N8O2", category: "アルカリ土類金属元素")
        var Y = Element(symbol: "Y", name: "イットリウム", number: 39, massNumber: 88.906, state: "", meltingPoint: 1520, boilingPoint: 3388, ionization: 600, affinity: 30, orbit: "K2L8M18N9O2", category: "遷移元素")
        var Zr = Element(symbol: "Zr", name:"ジルコニウム", number: 40, massNumber: 91.224, state: "", meltingPoint: 1852, boilingPoint: 4361, ionization: 640.1, affinity: 41, orbit: "K2L8M18N10O2", category: "遷移元素")
        var Nb = Element(symbol: "Nb", name: "ニオブ", number: 41, massNumber: 92.906, state: "", meltingPoint: 2469, boilingPoint: 4927, ionization: 652.1, affinity: 86, orbit: "K2L8M18N12O1", category: "遷移元素")
        var Mo = Element(symbol: "Mo", name: "モリブデン", number: 42, massNumber: 95.95, state: "", meltingPoint: 2623, boilingPoint: 4682, ionization: 684.3, affinity: 72, orbit: "K2L8M18N13O1", category: "遷移元素")
        var Tc = Element(symbol: "Tc", name: "テクネチウム", number: 43, massNumber: 98, state: "", meltingPoint: 2157, boilingPoint: 4265, ionization: 702, affinity: 53, orbit: "K2L8M18N13O2", category: "遷移元素")
        var Ru = Element(symbol: "Ru", name: "ルテニウム", number: 44, massNumber: 101.07, state: "", meltingPoint: 2250, boilingPoint: 4155, ionization: 710.2, affinity: 101, orbit: "K2L8M18N15O1", category: "遷移元素")
        var Rh = Element(symbol: "Rh", name: "ロジウム", number: 45, massNumber: 102.906, state: "", meltingPoint: 1960, boilingPoint: 3697, ionization: 719.7, affinity: 110, orbit: "K2L8M18N16O1", category: "遷移元素")
        var Pd = Element(symbol: "Pd", name: "パラジウム", number: 46, massNumber: 106.42, state: "", meltingPoint: 1552, boilingPoint: 2964, ionization: 804.4, affinity: 54, orbit: "K2L8M18N18", category: "遷移元素")
        var Ag = Element(symbol: "Ag", name: "銀", number: 47, massNumber: 107.868, state: "", meltingPoint: 962, boilingPoint: 2162, ionization: 731.0, affinity: 126, orbit: "K2L8M18N18O1", category: "遷移元素")
        var Cd = Element(symbol: "Cd", name: "カドミウム", number: 48, massNumber: 112.414, state: "", meltingPoint: 321, boilingPoint: 767, ionization: 867.8, affinity: 0, orbit: "K2L8M18N18O2", category: "遷移元素")
        var In = Element(symbol: "In", name: "インジウム", number: 49, massNumber: 114.818, state: "", meltingPoint: 157, boilingPoint: 2072, ionization: 558.3, affinity: 39, orbit: "K2L8M18N18O3", category: "典型元素")
        var Sn = Element(symbol: "Sn", name: "スズ", number: 50, massNumber: 118.710, state: "", meltingPoint: 232, boilingPoint: 2603, ionization: 708.6, affinity: 107, orbit: "K2L8M18N18O4", category: "典型元素")
        var Sb = Element(symbol: "Sb", name: "アンチモン", number: 51, massNumber: 121.760, state: "", meltingPoint: 631, boilingPoint: 1587, ionization: 834, affinity: 101, orbit: "K2L8M18N18O5", category: "典型元素")
        var Te = Element(symbol: "Te", name: "テルル", number: 52, massNumber: 127.60, state: "", meltingPoint: 450, boilingPoint: 991, ionization: 869.3, affinity: 190, orbit: "K2L8M18N18O6", category: "典型元素")
        var I = Element(symbol: "I", name: "ヨウ素", number: 53, massNumber: 126.904, state: "", meltingPoint: 114, boilingPoint: 184, ionization: 1008.4, affinity: 295, orbit: "K2L8M18N18O7", category: "ハロゲン")
        var Xe = Element(symbol: "Xe", name: "キセノン", number: 54, massNumber: 131.293, state: "", meltingPoint: -112, boilingPoint: -108, ionization: 1170.4, affinity: -77, orbit: "K2L8M18N18O8", category: "希ガス元素")
        var Cs = Element(symbol: "Cs", name: "セシウム", number: 55, massNumber: 132.905, state: "", meltingPoint: 28, boilingPoint: 658, ionization: 375.7, affinity: 46, orbit: "K2L8M18N18O8P1", category: "アルカリ金属元素")
        var Ba = Element(symbol: "Ba", name: "バリウム", number: 56, massNumber: 137.327, state: "", meltingPoint: 729, boilingPoint: 1898, ionization: 502.9, affinity: 14, orbit: "K2L8M18N18O8P2", category: "アルカリ土類金属元素")
        var La = Element(symbol: "La", name: "ランタン", number: 57, massNumber: 138.905, state: "", meltingPoint: 920, boilingPoint: 3461, ionization: 538.1, affinity: 48, orbit: "K2L8M18N18O9P2", category: "遷移元素")
        var Hf = Element(symbol: "Hf", name: "ハフニウム", number: 72, massNumber: 178.49, state: "", meltingPoint: 2231, boilingPoint: 4602, ionization: 658.5, affinity: 0, orbit: "K2L8M18N31O10P2", category: "遷移元素")
        var Ta = Element(symbol: "Ta", name: "タンタル", number: 73, massNumber: 180.948, state: "", meltingPoint: 2985, boilingPoint: 5510, ionization: 761, affinity: 31, orbit: "K2L8M18N31O11P2", category: "遷移元素")
        var W = Element(symbol: "W", name: "タングステン", number: 74, massNumber: 183.84, state: "", meltingPoint: 3407, boilingPoint: 5555, ionization: 770, affinity: 79, orbit: "K2L8M18N31O12P2", category: "遷移元素")
        var Re = Element(symbol: "Re", name: "レニウム", number: 75, massNumber: 186.207, state: "", meltingPoint: 3180, boilingPoint: 5596, ionization: 760, affinity: 14, orbit: "K2L8M18N31O13P2", category: "遷移元素")
        var Os = Element(symbol: "Os", name: "オスミウム", number: 76, massNumber: 190.23, state: "", meltingPoint: 3045, boilingPoint: 5012, ionization: 840, affinity: 104, orbit: "K2L8M18N31O14P2", category: "遷移元素")
        var Ir = Element(symbol: "Ir", name: "イリジウム", number: 77, massNumber:192.217, state: "", meltingPoint: 2443, boilingPoint: 4437, ionization: 880, affinity: 150, orbit: "K2L8M18N31O15P2", category: "遷移元素")
        var Pt = Element(symbol: "Pt", name: "白金", number: 78, massNumber: 195.084, state: "", meltingPoint: 1769, boilingPoint: 3827, ionization: 870, affinity: 205, orbit: "K2L8M18N31O17P1", category: "遷移元素")
        var Au = Element(symbol: "Au", name: "金", number: 79, massNumber: 196.967, state: "", meltingPoint: 1064, boilingPoint: 2857, ionization: 890.1, affinity: 223, orbit: "K2L8M18N31O18P1", category: "遷移元素")
        var Hg = Element(symbol: "Hg", name: "水銀", number: 80, massNumber: 200.59, state: "", meltingPoint: -39, boilingPoint: 357, ionization: 1007.1, affinity: 0, orbit: "K2L8M18N31O18P2", category: "遷移元素")
        var Tl = Element(symbol: "Tl", name: "タリウム", number: 81, massNumber: 204.38, state: "", meltingPoint: 304, boilingPoint: 1473, ionization: 589.4, affinity: 36, orbit: "K2L8M18N31O18P3", category: "典型元素")
        var Pb = Element(symbol: "Pb", name: "鉛", number: 82, massNumber: 207.2, state: "", meltingPoint: 328, boilingPoint: 1750, ionization: 715.6, affinity: 35, orbit: "K2L8M18N31O18P4", category: "典型元素")
        var Bi = Element(symbol: "Bi", name: "ビスマス", number: 83, massNumber: 208.980, state: "", meltingPoint: 271, boilingPoint: 1561, ionization: 703, affinity: 91, orbit: "K2L8M18N31O18P5", category: "典型元素")
        var Po = Element(symbol: "Po", name: "ポロニウム", number: 84, massNumber: 209, state: "", meltingPoint: 254, boilingPoint: 962, ionization: 812.1, affinity: 183, orbit: "K2L8M18N31O18P6", category: "典型元素")
        var At = Element(symbol: "At", name: "アスタチン", number: 85, massNumber: 210, state: "", meltingPoint: 302, boilingPoint: 337, ionization: 890, affinity: 270, orbit: "K2L8M18N31O18P7", category: "ハロゲン")
        var Rn = Element(symbol: "Rn", name: "ラドン", number: 86, massNumber: 222, state: "", meltingPoint: -71, boilingPoint: -62, ionization: 1037, affinity: 0, orbit: "K2L8M18N31O18P8", category: "希ガス元素")
        var Fr = Element(symbol: "Fr", name: "フランシウム", number: 87, massNumber: 223, state: "", meltingPoint: 27, boilingPoint: 677, ionization: 380, affinity: 0, orbit: "K2L8M18N31O18P8Q1", category: "アルカリ金属元素")
        var Ra = Element(symbol: "Ra", name: "ラジウム", number: 88, massNumber: 226, state: "", meltingPoint: 700, boilingPoint: 1140, ionization: 509.3, affinity: 0, orbit: "K2L8M18N31O18P8Q2", category: "アルカリ土類金属元素")
        var Ac = Element(symbol: "Ac", name: "アクチニウム", number: 89, massNumber: 227, state: "", meltingPoint: 1050, boilingPoint: 3197, ionization: 499, affinity: 0, orbit: "K2L8M18N31O18P9Q2", category: "遷移元素")
        
        elementArray.append([empty, one, two, three, four, five, six, seven])
        elementArray.append([one, H, Li, Na, K, Rb, Cs, Fr])
        elementArray.append([two, empty, Be, Mg, Ca, Sr, Ba, Ra])
        elementArray.append([three, empty, empty, empty, Sc, Y, La, Ac])
        elementArray.append([four, empty, empty, empty, Ti, Zr, Hf, empty])
        elementArray.append([five, empty, empty, empty, V, Nb, Ta, empty])
        elementArray.append([six, empty, empty, empty, Cr, Mo, W, empty])
        elementArray.append([seven, empty, empty, empty, Mn, Tc, Re, empty])
        elementArray.append([eight, empty, empty, empty, Fe, Ru, Os, empty])
        elementArray.append([nine, empty, empty, empty, Co, Rh, Ir, empty])
        elementArray.append([ten, empty, empty, empty, Ni, Pd, Pt, empty])
        elementArray.append([eleven, empty, empty, empty, Cu, Ag, Au, empty])
        elementArray.append([twelve, empty, empty, empty,Zn, Cd, Hg, empty])
        elementArray.append([thirteen, empty, B, Al, Ga, In, Tl, empty])
        elementArray.append([fourteen, empty, C, Si, Ge, Sn, Pb, empty])
        elementArray.append([fifteen, empty, N, P, As, Sb, Bi, empty])
        elementArray.append([sixteen, empty, O, S, Se, Te, Po, empty])
        elementArray.append([seventeen, empty, F, Cl, Br, I, At, empty])
        elementArray.append([eighteen, He, Ne, Ar, Kr, Xe, Rn, empty])
        
        
    }
    
    
}
