//
//  DetailViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {


    var detail = DetailView()

    override func awakeFromNib() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let detailView:UIView = UINib(nibName: "DetailView", bundle: nil).instantiateWithOwner(self, options: nil)[0] as UIView
        self.view.addSubview(detailView)
        
//symbol.frame = CGRectMake(10, 10, 100, 100)
        
        self.view.frame = CGRectMake(50, 550, 300, 300)
        self.view.backgroundColor = UIColor.greenColor()
    }

}
