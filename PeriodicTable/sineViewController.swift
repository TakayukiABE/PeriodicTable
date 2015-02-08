//
//  sineViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/08.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class sineViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        print("hoge")
        
        var hoge = UILabel(frame: CGRectMake(100, 100, 100, 100))
        hoge.text = "ks"
        self.view.addSubview(hoge)
        
        self.view.frame = CGRectMake(450, 550, 300, 300)
        self.view.backgroundColor = UIColor.redColor()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
