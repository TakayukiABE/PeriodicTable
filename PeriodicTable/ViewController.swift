//
//  ViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var temperatureSlider = UISlider()
    var temperature = UILabel()
    var value = 25
    var newValue = Int()

    
    
    var periodicView = PeriodicViewController()
    var detailView = DetailViewController()
    var sineView = sineViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.addSubview(periodicView.view)
        self.view.addSubview(detailView.view)
        self.view.addSubview(sineView.view)
        
        temperatureSlider.frame = CGRectMake(0, 0, self.view.frame.width - 100, 30)
        temperatureSlider.center = CGPoint(x: self.view.frame.width/2, y: 550)
        temperatureSlider.minimumValue = -273
        temperatureSlider.maximumValue = 6000
        temperatureSlider.value = 25
        temperatureSlider.addTarget(self, action: "didChangeValue:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(temperatureSlider)
        temperature.frame = CGRectMake(0, 0, 50, 50)
        temperature.center = CGPoint(x: self.view.frame.width/2, y: 600)
        temperature.font = UIFont.systemFontOfSize(10)
        temperature.text = "25℃"
        self.view.addSubview(temperature)
        
        
        
    }

    func didChangeValue(slider:UISlider) {
        newValue = Int(slider.value)
        if abs(value - newValue) > 100 || newValue == -273 || newValue == 6000 {
            value = newValue
            temperature.text = "\(value)℃"
            periodicView.setTemperature(Int(temperatureSlider.value))
            periodicView.periodicTable.reloadData()
            
        }
    }
}

