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
    var empty:Element = Element(symbol: " ", name: " ", number: 0, massNumber: 0)
    var one:Element = Element(symbol: "1", name: "one", number: 0, massNumber: 0)
    var two:Element = Element(symbol: "2", name: "two", number: 0, massNumber: 0)
    var three:Element = Element(symbol: "3", name: "three", number: 0, massNumber: 0)
    var four:Element = Element(symbol: "4", name: "four", number: 0, massNumber: 0)
    var five:Element = Element(symbol: "5", name: "", number: 0, massNumber: 0)
    var six:Element = Element(symbol: "6", name: "", number: 0, massNumber: 0)
    var seven:Element = Element(symbol: "7", name: "", number: 0, massNumber: 0)
    var eight:Element = Element(symbol: "8", name: "", number: 0, massNumber: 0)
    var nine:Element = Element(symbol: "9", name: "", number: 0, massNumber: 0)
    var ten:Element = Element(symbol: "10", name: "", number: 0, massNumber: 0)
    var eleven:Element = Element(symbol: "11", name: "", number: 0, massNumber: 0)
    var twelve:Element = Element(symbol: "12", name: "", number: 0, massNumber: 0)
    var thirteen:Element = Element(symbol: "13", name: "", number: 0, massNumber: 0)
    var fourteen:Element = Element(symbol: "14", name: "", number: 0, massNumber: 0)
    var fifteen:Element = Element(symbol: "15", name: "", number: 0, massNumber: 0)
    var sixteen:Element = Element(symbol: "16", name: "", number: 0, massNumber: 0)
    var seventeen:Element = Element(symbol: "17", name: "", number: 0, massNumber: 0)
    var eighteen:Element = Element(symbol: "18", name: "", number: 0, massNumber: 0)
    
    var H:Element = Element(symbol: "H", name: "水素", number: 1, massNumber: 1)
    var He:Element = Element(symbol: "He", name: "ヘリウム", number: 2, massNumber: 4)
    
    
    override init() {
        super.init()
        
        
        elementArray.append([empty, one])
        elementArray.append([one, H])
        elementArray.append([two, empty])
        elementArray.append([three, empty])
        elementArray.append([four, empty])
        elementArray.append([five, empty])
        elementArray.append([six, empty])
        elementArray.append([seven, empty])
        elementArray.append([eight, empty])
        elementArray.append([nine, empty])
        elementArray.append([ten, empty])
        elementArray.append([eleven, empty])
        elementArray.append([twelve, empty])
        elementArray.append([thirteen, empty])
        elementArray.append([fourteen, empty])
        elementArray.append([fifteen, empty])
        elementArray.append([sixteen, empty])
        elementArray.append([seventeen, empty])
        elementArray.append([eighteen, He])
        
        
    }
    
    
}
