//
//  PeriodicViewController.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2015/02/07.
//  Copyright (c) 2015年 University of Tsukuba. All rights reserved.
//

import UIKit

class PeriodicViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    let Nib = UINib(nibName: "PeriodicCollectionViewCell", bundle: nil)
    var periodicTable = UICollectionView(frame: CGRectZero, collectionViewLayout: UICollectionViewFlowLayout())
    var temperature = 25
    var selectedCell = [1,1]
    var reloadDelegate:DetailViewDelegate!
    var periodicModel = PeriodicModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        periodicTable.delegate = self
        periodicTable.dataSource = self
        self.periodicTable.backgroundColor = UIColor(red: 0.1, green: 0.1, blue: 0.1, alpha: 1)
        self.periodicTable.registerNib(Nib, forCellWithReuseIdentifier: "cell")
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(periodicTable)
    }
    
    override func viewWillLayoutSubviews() {
        let frame = self.view.frame
        self.periodicTable.frame = CGRectMake(frame.origin.x + 25, 50, frame.size.width - 50, frame.size.height - 300)
        self.periodicTable.bounds = CGRectInset(self.view.frame, 25.0, 156)
        self.periodicTable.layer.cornerRadius = 12
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 8
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell:PeriodicCollectionViewCell = periodicTable.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! PeriodicCollectionViewCell
        let element = periodicModel.readElement(indexPath.row, period: indexPath.section, cell: selectedCell)
        
        cell.alpha = 1.0
        cell.layer.cornerRadius = 0
        cell.elementName.text = ""
        cell.elementName.textColor = UIColor.blackColor()
        if element.category == "アルカリ金属元素" {
            cell.backgroundColor = UIColor(red: 1.0,green: 1.0,blue: 0.1,alpha: 1)
        }else if element.category == "アルカリ土類金属元素"{
            cell.backgroundColor = UIColor(red: 1.0,green: 0.9,blue: 0.3,alpha: 1)
        }else if element.category == "遷移元素" {
            cell.backgroundColor = UIColor(red: 0.8,green: 0.9,blue: 0.5,alpha: 1)
        }else if element.category == "希ガス元素" {
            cell.backgroundColor = UIColor(red: 0.5, green:1.0, blue: 1.0, alpha: 1.0)
        }else if element.category == "典型金属元素" {
            cell.backgroundColor = UIColor(red: 0.8,green: 0.8,blue: 0.4,alpha: 1)
        }else if element.category == "典型半金属元素" {
            cell.backgroundColor = UIColor(red: 0.9,green: 0.7,blue: 0.4,alpha: 1)
        }else if element.category == "典型非金属元素" {
            cell.backgroundColor = UIColor(red: 0.4,green: 1.0,blue: 0.6,alpha: 1)
        }else if element.category == "ハロゲン" {
            cell.backgroundColor = UIColor(red: 0.2,green: 0.9,blue: 0.9,alpha: 1)
        }else if element.category == "ランタノイド" {
            cell.backgroundColor = UIColor(red: 0.7, green: 0.8, blue: 0.7, alpha: 1)
        }else if element.category == "アクチノイド" {
            cell.backgroundColor = UIColor(red: 0.6, green: 0.7, blue: 0.8, alpha: 1)
        }else {
            cell.backgroundColor = UIColor.whiteColor()
        }
        if element.name == "empty" {
            cell.backgroundColor = UIColor.clearColor()
            return cell
        }
        cell.elementName.text = element.symbol
        if temperature > element.boilingPoint {
            cell.alpha = 0.8
            cell.layer.cornerRadius = 24
            cell.elementName.textColor = UIColor.grayColor()
        }else if temperature > element.meltingPoint {
            cell.layer.cornerRadius = 13
            cell.elementName.textColor = UIColor.blueColor()
        }
        if indexPath.row == selectedCell[0] && indexPath.section == selectedCell[1] {
            cell.backgroundColor = UIColor(red: 1.0,green: 0.1,blue: 0.3,alpha: 1)
        }
        if element.boilingPoint == 7000 {
            cell.layer.cornerRadius = 0
            cell.elementName.textColor = UIColor.blackColor()
        }
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: (Double(self.view.frame.width) - Double(50.0)) / Double(20.0), height: (Double(self.view.frame.height) - Double(350)) / Double(7.6))
//        return CGSize(width: 47.5, height: 55)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 10, bottom: 1, right: 10)
    }
    
    func setCurrentTemperature(newTemperature:Int) {
        temperature = newTemperature
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 3 && indexPath.section == 6 {
            periodicModel.isLanthanide = true
            periodicModel.isActinide = false
        } else if indexPath.row == 3 && indexPath.section == 7 {
            periodicModel.isLanthanide = false
            periodicModel.isActinide = true
        } else if indexPath.row >= 3 && indexPath.row <= 17 && indexPath.section == 6 {
            periodicModel.isActinide = false
        } else if indexPath.row >= 3 && indexPath.row <= 17 && indexPath.section == 7 {
            periodicModel.isLanthanide = false
        }else {
            periodicModel.isLanthanide = false
            periodicModel.isActinide = false
        }
        let element = periodicModel.readElement(indexPath.row, period: indexPath.section, cell: selectedCell)
        if element.number != 0 {
            self.reloadDelegate.reloadDetailView(element)
            selectedCell[0] = indexPath.row
            selectedCell[1] = indexPath.section
        }
        periodicTable.reloadData()
    }
    
    func changeCell(arrowTag:Int) {
        let row = selectedCell[0]
        let section = selectedCell[1]
        var movement:Int!
        var path:NSIndexPath!

        switch (arrowTag) {
        case 0:
            if row == 13 && section == 2 {
                path = NSIndexPath(forRow: 2, inSection: 2)
                selectedCell[0] = 2
                selectedCell[1] = 2
            }else if row == 13 && section == 3 {
                path = NSIndexPath(forRow: 2, inSection: 3)
                selectedCell[0] = 2
                selectedCell[1] = 3
            }else if row == 1 && section == 7 {
                path = NSIndexPath(forRow: 3, inSection: 7)
            }else if section == 1 && row == 18{
                path = NSIndexPath(forRow: 1, inSection: 1)
            }else if row == 1 { movement = 17
                path = NSIndexPath(forRow:row + 17, inSection: selectedCell[1])
                selectedCell[0] = 17
            }else { movement = -1
                path = NSIndexPath(forRow: row - 1, inSection: selectedCell[1])
                selectedCell[0] = row - 1
            }
            break
        case 1:
            if 4 <= row && row <= 12 && section == 7  {
                movement = -3
            }else if 13 <= row && row <= 17 && section == 7 {
                movement = -5
            }else if 4 <= row && row <= 12 && section == 6 {
                movement = -2
            }else if section == 6 && 12 <= row && row < 18 {
                movement = -4
            }else if section == 6 && row == 18 {
                movement = -5
            }else if 3 == row && section == 7 {
                movement = -3
            }else if section == 7 && row == 1 { movement = -6 }
            else if section == 7 && row == 2 { movement = -5}
            else { movement = 1 }
            path = NSIndexPath(forRow: row, inSection: section + movement)
            selectedCell[1] = section + movement
            break
        case 2:
            if section == 2 && 2 == row  {
                movement = 5
            }else if section == 1 && row == 18 {
                movement = 5
            }else if section == 4 && 3 == row {
                movement = 3
            }else if section == 4 && 4 <= row && row <= 12 {
                movement = 2
            }
            else if section == 2 && 13 <= row && row <= 17 {
                movement = 4
            }else if section == 18 {
                movement = 5
            }else if section == 1 { movement = 6 }
            else { movement = -1 }
            path = NSIndexPath(forRow: row, inSection: section + movement)
            selectedCell[1] = section + movement
            break
        case 3:
            if row == 17 && section == 7 {
                movement = -16
            }else if section == 6 && row == 17 && periodicModel.isLanthanide {
                movement = -13
                periodicModel.isLanthanide = false
            }else if section == 1 && row == 1 {
                movement = 17
            }else if 2 <= section && section <= 3 && row == 2 {
                movement = 11
            }else if section == 7 && row == 3 {
                if periodicModel.isActinide {
                    movement = 1
                }else {
                    movement = -2
                }
            }
            else if row == 18 { movement = -17 }
            else { movement = 1 }
            path = NSIndexPath(forRow: row + movement, inSection: section)
            selectedCell[0] = row + movement
            break
        default:
            break
        }
        collectionView(periodicTable, didSelectItemAtIndexPath: path)
    }
}

protocol DetailViewDelegate {
    func reloadDetailView(element:Element) -> Void
}

