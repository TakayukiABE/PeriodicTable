//
//  DetailViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var elementName: UILabel!
    @IBOutlet weak var massNumber: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var category: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.frame = CGRectMake(50, 550, 300, 300)
        self.view.backgroundColor = UIColor.clearColor()
    }

}
