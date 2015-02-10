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
    
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
    }
*/
  
    
    class func instance() -> DetailView {
        return UINib(nibName: "DetailView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as DetailView
    }

    
    

}
