//
//  ViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var periodicView = PeriodicViewController()
    var detailView = DetailViewController()
    var sineView = sineViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.addSubview(periodicView.view)
        self.view.addSubview(detailView.view)
        self.view.addSubview(sineView.view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

