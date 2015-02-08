//
//  DetailViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    

    override func awakeFromNib() {
//        
//        let view:UIView = UINib(nibName: "DetailViewController", bundle: nil).instantiateWithOwner(self, options: nil)[0] as UIView
//        self.view.addSubview(view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//symbol.frame = CGRectMake(10, 10, 100, 100)
        
        self.view.frame = CGRectMake(50, 550, 300, 300)
        self.view.backgroundColor = UIColor.greenColor()
    }

}
