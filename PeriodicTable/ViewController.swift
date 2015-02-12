//
//  ViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DetailViewDelegate {
    
    
    var temperatureSlider = UISlider()
    var temperature = UILabel()
    var value = 25
    var newValue = Int()
    var cursors = [UIButton]()
    


    
    
    
    var periodicView = PeriodicViewController()
    var detailView = DetailViewController()
    var sineView = sineViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.periodicView.reloadDelegate = self
        
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
        
        
        initCursors()
        
    }
    func reloadDetailView(element:Element) {
        detailView.detailView.name.text = element.name
        detailView.detailView.symbol.text = element.symbol
        detailView.detailView.number.text = "\(element.number)"
        detailView.detailView.massNumber.text = "\(element.massNumber)"
        detailView.detailView.orbit.text = element.orbit
        
            //element.symbol
    }
    
    
    func initCursors() {
        for i in 0...3 {
            cursors.append(UIButton())
            cursors[i].tag = i
            cursors[i].titleLabel?.font = UIFont.systemFontOfSize(100)
            cursors[i].addTarget(self, action: "didTapOnCursor:", forControlEvents: .TouchUpInside)
            cursors[i].backgroundColor = UIColor(red: 0, green: 1, blue: 1, alpha: 1)
            cursors[i].setTitleColor(UIColor.blueColor(), forState: .Normal)
            cursors[i].setTitleColor(UIColor.redColor(), forState: .Highlighted)
            cursors[i].layer.borderWidth = 1
            cursors[i].layer.cornerRadius = 5
            self.view.addSubview(cursors[i])
        }
        


        
        cursors[0].setTitle("←", forState: .Normal)
        cursors[1].setTitle("↓", forState: .Normal)
        cursors[2].setTitle("↑", forState: .Normal)
        cursors[3].setTitle("→", forState: .Normal)
        
        cursors[0].frame = CGRectMake(self.view.frame.size.width - 350, self.view.frame.height - 110, 100, 100)
        cursors[1].frame = CGRectMake(self.view.frame.width - 250, self.view.frame.height - 110, 100, 100)
        cursors[2].frame = CGRectMake(self.view.frame.size.width - 250, self.view.frame.height - 210, 100, 100)
        cursors[3].frame = CGRectMake(self.view.frame.size.width - 150, self.view.frame.height - 110, 100, 100)
        
    }
    
    func didTapOnCursor(sender:UIButton) {
        periodicView.changeCell(sender.tag)
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

