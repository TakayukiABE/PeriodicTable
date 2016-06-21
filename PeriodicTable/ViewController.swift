//
//  ViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DetailViewDelegate {
    
    @IBOutlet weak var periodicCollectionView: UICollectionView!
    
    
    var temperatureSlider = UISlider()
    var temperature = UILabel()
    var value = 25
    var newValue = Int()
    var cursors = [UIButton]()
    var handSwitch = UISwitch()
    var periodicView = PeriodicViewController()
    var detailView = DetailViewController()
    
    private let delegate = PeriodicCollectionViewDelegate()
    private let dataSource = PeriodicCollectionViewDataSource()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("collection: \(periodicCollectionView)\n")
        periodicCollectionView.delegate = delegate
        periodicCollectionView.dataSource = dataSource

        print("dataSource: \(periodicCollectionView.dataSource)\n")
        
        
        self.periodicView.reloadDelegate = self
//        self.view.addSubview(periodicView.view)
//        self.view.addSubview(detailView.view)
        temperatureSlider.frame = CGRectMake(0, 0, self.view.frame.width - 100, 30)
        temperatureSlider.center = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/1.5)
        temperatureSlider.minimumValue = -273
        temperatureSlider.maximumValue = 6000
        temperatureSlider.value = 25
        temperatureSlider.addTarget(self, action: "didChangeValue:", forControlEvents: UIControlEvents.ValueChanged)
        var gradient = CAGradientLayer()
        gradient.frame = temperatureSlider.bounds
        var colors:NSArray = [UIColor.redColor().CGColor, UIColor.blueColor().CGColor]
        gradient.colors = colors as [AnyObject]
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
//        self.view.addSubview(temperature)
        initCursors()
        handSwitch.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height - 200)
        handSwitch.center = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height - 20)
        handSwitch.onTintColor = UIColor.cyanColor()
        handSwitch.on = true
        handSwitch.addTarget(self, action: "changeHand:", forControlEvents: UIControlEvents.ValueChanged)
        handSwitch.backgroundColor = handSwitch.onTintColor
        handSwitch.layer.cornerRadius = 15
        self.view.addSubview(handSwitch)
        
        detailView.view.frame = CGRectMake(detailView.view.frame.origin.x, detailView.view.frame.origin.y, self.view.frame.midX - 80, self.view.frame.height - detailView.view.frame.origin.y - 8)
        detailView.detailView.frame = CGRectMake(detailView.detailView.frame.origin.x, detailView.detailView.frame.origin.y, self.view.frame.midX - 80, self.view.frame.height - detailView.detailView.frame.origin.y - 8)
    }
    
    func changeHand(sender:UISwitch) {
        if sender.on {
            changeRightHand()
        }else {
            changeLeftHand()
        }
    }
    
    func changeRightHand() {
        UIView.animateWithDuration(NSTimeInterval(CGFloat(0.3)),
            animations: {() -> Void in
                self.cursors[0].frame = CGRectMake(self.view.frame.size.width - 350, self.view.frame.height - 110, 100, 100)
                self.cursors[1].frame = CGRectMake(self.view.frame.width - 250, self.view.frame.height - 110, 100, 100)
                self.cursors[2].frame = CGRectMake(self.view.frame.size.width - 250, self.view.frame.height - 210, 100, 100)
                self.cursors[3].frame = CGRectMake(self.view.frame.size.width - 150, self.view.frame.height - 110, 100, 100)
                self.detailView.view.frame = CGRectMake(8, 550, self.detailView.view.frame.width, self.detailView.view.frame.height)
                
            }, completion: {(Bool) -> Void in
        })
    }
    
    func changeLeftHand() {
        UIView.animateWithDuration(NSTimeInterval(CGFloat(0.3)),
            animations: {() -> Void in
                self.cursors[0].frame = CGRectMake(50, self.view.frame.height - 110, 100, 100)
                self.cursors[1].frame = CGRectMake(150, self.view.frame.height - 110, 100, 100)
                self.cursors[2].frame = CGRectMake(150, self.view.frame.height - 210, 100, 100)
                self.cursors[3].frame = CGRectMake(250, self.view.frame.height - 110, 100, 100)

                                self.detailView.view.frame = CGRectMake(self.view.frame.midX + 80 - 8, 550, self.detailView.view.frame.width, self.detailView.view.frame.height)
            }, completion: {(Bool) -> Void in
        })
    }
    
    func reloadDetailView(element:Element) {
        detailView.view.alpha = 0.5
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.detailView.view.alpha = 1
        })
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
        if element.boilingPoint == 9999 {
            detailView.detailView.boilingPoint.text = "沸点：-"
        }else {
            detailView.detailView.boilingPoint.text = "沸点：\(element.boilingPoint)℃"
        }
        detailView.detailView.category.text = "\(element.category)"
        detailView.detailView.ionization.text = "第1イオン化エネルギー：\(element.ionization)kJ/mol"
        if element.affinity == 9999 {
            detailView.detailView.affinity.text = "電子親和力：-"
        }else {
            detailView.detailView.affinity.text = "電子親和力：\(element.affinity)kJ/mol"
        }
    }

    func initCursors() {
        for i in 0...3 {
            cursors.append(UIButton())
            cursors[i].tag = i
            cursors[i].titleLabel?.font = UIFont.systemFontOfSize(100)
            cursors[i].addTarget(self, action: "didTapOnCursor:", forControlEvents: .TouchUpInside)
            cursors[i].backgroundColor = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.1)
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
            periodicView.setCurrentTemperature(Int(temperatureSlider.value))
            periodicView.periodicTable.reloadData()
        }
    }
}

