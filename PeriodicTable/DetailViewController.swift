//
//  DetailViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var detailView = DetailView.createInstance()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.borderWidth = 1
        detailView.frame = CGRectMake(0, 0, 460, 215)
        self.view.frame = CGRectMake(8, 550, 460, 215)
        self.view.layer.cornerRadius = 15
        self.view.backgroundColor = UIColor.clearColor()
        detailView.symbol.adjustsFontSizeToFitWidth = true
        detailView.name.adjustsFontSizeToFitWidth = true
        detailView.orbit.adjustsFontSizeToFitWidth = true
        detailView.meltingPoint.adjustsFontSizeToFitWidth = true
        detailView.boilingPoint.adjustsFontSizeToFitWidth = true
        detailView.ionization.adjustsFontSizeToFitWidth = true
        detailView.affinity.adjustsFontSizeToFitWidth = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.view.addSubview(detailView)
        
    }

}
