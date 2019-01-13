//
//  DetailView.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/09.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class DetailView: UIView {

    @IBOutlet weak var symbol: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var massNumber: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var orbit: UILabel!
    @IBOutlet weak var meltingPoint: UILabel!
    @IBOutlet weak var boilingPoint: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var ionization: UILabel!
    @IBOutlet weak var affinity: UILabel!
    
//    class func createInstance() -> DetailView {
    //        return UINib(nibName: "ElementDetailView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as! DetailView
//    }
}
