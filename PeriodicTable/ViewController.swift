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
    var handSwitch = UISwitch()
    
    
    var periodicView = PeriodicViewController()
    var detailView = DetailViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.periodicView.reloadDelegate = self
        
        self.view.addSubview(periodicView.view)
        self.view.addSubview(detailView.view)
        
        temperatureSlider.frame = CGRectMake(0, 0, self.view.frame.width - 100, 30)
        temperatureSlider.center = CGPoint(x: self.view.frame.width/2, y: 530)
        temperatureSlider.minimumValue = -273
        temperatureSlider.maximumValue = 6000
        temperatureSlider.value = 25
        temperatureSlider.addTarget(self, action: "didChangeValue:", forControlEvents: UIControlEvents.ValueChanged)
        var gradient = CAGradientLayer()
        gradient.frame = temperatureSlider.bounds
        var colors:NSArray = [UIColor.redColor().CGColor, UIColor.blueColor().CGColor]
        gradient.colors = colors
        var start = CGPoint(x: 1.0, y: 0.5)
        var end = CGPoint(x: 0.0, y: 0.5)
        gradient.startPoint = start
        gradient.endPoint = end
        gradient.cornerRadius = 15
        temperatureSlider.layer.insertSublayer(gradient, atIndex: 0)
        
        self.view.addSubview(temperatureSlider)
        temperature.frame = CGRectMake(0, 0, 200, 50)
        temperature.center = CGPoint(x: self.view.frame.width/2, y: 570)
        temperature.font = UIFont.systemFontOfSize(30)
        temperature.text = "25℃"
        temperature.textAlignment = NSTextAlignment.Center
        self.view.addSubview(temperature)
        
        
        initCursors()
        
        handSwitch.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height - 200)
        handSwitch.center = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height - 20)
        handSwitch.tintColor = UIColor.blackColor()
        handSwitch.on = true
        handSwitch.addTarget(self, action: "changeHand:", forControlEvents: UIControlEvents.ValueChanged)
        handSwitch.backgroundColor = UIColor(red: 0.1, green: 0.8, blue: 0.1, alpha: 1.0)
        handSwitch.layer.cornerRadius = 15
        self.view.addSubview(handSwitch)
        
        
    }
    
    func changeHand(sender:UISwitch) {
        if sender.on {
            changeRightHand()
        }else {
            changeLeftHand()
        }
    }
    
    func changeRightHand() {
        cursors[0].frame = CGRectMake(self.view.frame.size.width - 350, self.view.frame.height - 110, 100, 100)
        cursors[1].frame = CGRectMake(self.view.frame.width - 250, self.view.frame.height - 110, 100, 100)
        cursors[2].frame = CGRectMake(self.view.frame.size.width - 250, self.view.frame.height - 210, 100, 100)
        cursors[3].frame = CGRectMake(self.view.frame.size.width - 150, self.view.frame.height - 110, 100, 100)
        detailView.view.frame = CGRectMake(50, 550, 500, 500)
    }
    
    func changeLeftHand() {
        cursors[0].frame = CGRectMake(50, self.view.frame.height - 110, 100, 100)
        cursors[1].frame = CGRectMake(150, self.view.frame.height - 110, 100, 100)
        cursors[2].frame = CGRectMake(150, self.view.frame.height - 210, 100, 100)
        cursors[3].frame = CGRectMake(250, self.view.frame.height - 110, 100, 100)
        detailView.view.frame = CGRectMake(550, 550, 500, 500)
    }
    
    
    func reloadDetailView(element:Element) {
        detailView.detailView.name.text = element.name
        detailView.detailView.symbol.text = element.symbol
        detailView.detailView.number.text = "\(element.number)"
        detailView.detailView.massNumber.text = "\(element.massNumber)"
        detailView.detailView.orbit.text = element.orbit
        if element.meltingPoint == 9999 {
            detailView.detailView.meltingPoint.text = "融点：なし"
        }else {
            detailView.detailView.meltingPoint.text = "融点：\(element.meltingPoint)℃"
        }
        detailView.detailView.boilingPoint.text = "沸点：\(element.boilingPoint)℃"
        detailView.detailView.category.text = "\(element.category)"
        detailView.detailView.ionization.text = "第1イオン化エネルギー：\(element.ionization)kJ/mol"
        detailView.detailView.affinity.text = "電子親和力：\(element.affinity)kJ/mol"
    }
    
    
    func initCursors() {
        for i in 0...3 {
            cursors.append(UIButton())
            cursors[i].tag = i
            cursors[i].titleLabel?.font = UIFont.systemFontOfSize(100)
            cursors[i].addTarget(self, action: "didTapOnCursor:", forControlEvents: .TouchUpInside)
            cursors[i].backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.3)
            cursors[i].setTitleColor(UIColor.blueColor(), forState: .Normal)
            cursors[i].setTitleColor(UIColor.blackColor(), forState: .Highlighted)
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

