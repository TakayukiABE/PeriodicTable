//
//  Element.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit
import RealmSwift

class Element: Object {
    dynamic var symbol: String = ""
    dynamic var name: String = ""
    dynamic var number: Int = 0
    dynamic var massNumber: Double = 0.0
    dynamic var state: String = ""
    dynamic var meltingPoint: Int = 0
    dynamic var boilingPoint: Int = 0
    dynamic var ionization: Double = 0.0
    dynamic var affinity: Int = 0
    dynamic var orbit: String = ""
    dynamic var category: String = ""
    dynamic var group: Int = 0
    dynamic var period: Int = 0
}