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
        self.periodicTable.backgroundColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1)
        
        self.periodicTable.registerNib(Nib, forCellWithReuseIdentifier: "cell")
       // self.periodicTable.registerClass(PeriodicCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(periodicTable)
    }
    override func viewWillLayoutSubviews() {
        let frame = self.view.frame
        self.periodicTable.frame = CGRectMake(frame.origin.x + 27, 50, frame.size.width - 50, frame.size.height - 300)
        self.periodicTable.bounds = CGRectInset(self.view.frame, 25.0, 156)
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 8
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell:PeriodicCollectionViewCell = periodicTable.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as PeriodicCollectionViewCell
        cell.alpha = 1.0
        cell.layer.cornerRadius = 0
        cell.backgroundColor = UIColor.whiteColor()
        var element = periodicModel.elementArray[indexPath.row][indexPath.section]
        
        if element.name == "empty" {
            cell.backgroundColor = UIColor.blackColor()
            return cell
        }
        
        cell.elementName.text = periodicModel.elementArray[indexPath.row][indexPath.section].symbol
        if temperature > element.meltingPoint {
            cell.alpha = 0.8
        }else if temperature > element.boilingPoint {
            cell.layer.cornerRadius = 15
        }
        if indexPath.row == selectedCell[0] && indexPath.section == selectedCell[1] {
            cell.backgroundColor = UIColor(red: 0, green: 1, blue: 1, alpha: 1)
        }
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 47.5, height: 55)
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 1.0
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    func setTemperature(newTemperature:Int) {
        temperature = newTemperature
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        var element:Element = periodicModel.elementArray[indexPath.row][indexPath.section]
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
                path = NSIndexPath(forRow: 11, inSection: 7)
            }else if section == 1 && row == 18{
                path = NSIndexPath(forRow: 1, inSection: 1)
            }
            else if row == 1 { movement = 17
                path = NSIndexPath(forRow:row + 17, inSection: selectedCell[1])
                selectedCell[0] = 17
            }
            else { movement = -1
                path = NSIndexPath(forRow: row - 1, inSection: selectedCell[1])
                selectedCell[0] = row - 1
            }
            break
        case 1:
            if row == 12 && section == 6 {
                movement = -2
            }
            else if section == 6 && 12 <= row && row < 18 {
                movement = -4
            }else if section == 6 && row == 18 {
                movement = -5
            }
            else if 3 <= row && row <= 11 && section == 7 {
                movement = -3
            }
            else if section == 7 && row == 1 { movement = -6 }
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
            }else if section == 4 && 3 <= row && row <= 11 {
                movement = 3
            }else if section == 4 && row == 12 {
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
            if section == 1 && row == 1 {
                movement = 17
            }else if 2 <= section && section <= 3 && row == 2 {
                movement = 11
            }else if section == 7 && row == 11 {
                movement = -10
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

