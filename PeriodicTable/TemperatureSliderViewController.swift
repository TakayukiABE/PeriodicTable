////
////  TemperatureSliderViewController.swift
////  PeriodicTable
////
////  Created by takayuki abe on 2015/02/08.
////  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
////
//
//import UIKit
//
//class TemperatureSliderViewController: UIViewController {
//
//    var temperatureSlider = UISlider()
//    var temperature = UILabel()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        temperatureSlider.frame = CGRectMake(0, 0, self.view.frame.width - 100, 30)
//        temperatureSlider.center = CGPoint(x: self.view.frame.width/2, y: 550)
//        temperatureSlider.minimumValue = -273
//        temperatureSlider.maximumValue = 6000
//        temperatureSlider.value = 25
//        temperatureSlider.addTarget(self, action: "didChangeValue:", forControlEvents: UIControlEvents.ValueChanged)
//        self.view.addSubview(temperatureSlider)
//        temperature.frame = CGRectMake(0, 0, 50, 50)
//        temperature.center = CGPoint(x: self.view.frame.width/2, y: 600)
//        temperature.font = UIFont.systemFontOfSize(10)
//        temperature.text = "25℃"
//        self.view.addSubview(temperature)
//        
//    }
//    
//    func didChangeValue(slider:UISlider) {
//        var value = slider.value
//        temperature.text = "\(value)℃"
//        self.doReaload(<#methodName: () -> Void##() -> Void#>)
//        
//    }
//    
//    
//    func doReaload(methodName:() -> Void) {
//        methodName()
//    }
//}
