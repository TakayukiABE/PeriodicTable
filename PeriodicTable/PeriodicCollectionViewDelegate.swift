//
//  PeriodicCollectionViewDelegate.swift
//  PeriodicTable
//
//  Created by takayuki abe on 2016/06/16.
//  Copyright © 2016年 University of Tsukuba. All rights reserved.
//

import UIKit

class PeriodicCollectionViewDelegate: NSObject, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    private let numberOfGroups: CGFloat = 18.0
    private let numberOfPeriods: CGFloat = 7.0
    private let numberOfHeaders: CGFloat = 1.0
    private let spacing: CGFloat = 3.0
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(collectionView.frame.width / (numberOfGroups + numberOfHeaders) - spacing, collectionView.frame.height / (numberOfPeriods + numberOfHeaders) - spacing)
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        return UIEdgeInsetsMake(0, 0, insetForSection, 0)
//    }
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        return 8
//    }
//    
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 19
//    }
//    
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        let cell:PeriodicCollectionViewCell = periodicTable!.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! PeriodicCollectionViewCell
//        let element = periodicModel.readElement(indexPath.row, period: indexPath.section, cell: selectedCell)
//        
//        cell.alpha = 1.0
//        cell.layer.cornerRadius = 0
//        cell.elementName.text = ""
//        cell.elementName.textColor = UIColor.blackColor()
//        if element.category == "アルカリ金属元素" {
//            cell.backgroundColor = UIColor(red: 1.0,green: 1.0,blue: 0.1,alpha: 1)
//        }else if element.category == "アルカリ土類金属元素"{
//            cell.backgroundColor = UIColor(red: 1.0,green: 0.9,blue: 0.3,alpha: 1)
//        }else if element.category == "遷移元素" {
//            cell.backgroundColor = UIColor(red: 0.8,green: 0.9,blue: 0.5,alpha: 1)
//        }else if element.category == "希ガス元素" {
//            cell.backgroundColor = UIColor(red: 0.5, green:1.0, blue: 1.0, alpha: 1.0)
//        }else if element.category == "典型金属元素" {
//            cell.backgroundColor = UIColor(red: 0.8,green: 0.8,blue: 0.4,alpha: 1)
//        }else if element.category == "典型半金属元素" {
//            cell.backgroundColor = UIColor(red: 0.9,green: 0.7,blue: 0.4,alpha: 1)
//        }else if element.category == "典型非金属元素" {
//            cell.backgroundColor = UIColor(red: 0.4,green: 1.0,blue: 0.6,alpha: 1)
//        }else if element.category == "ハロゲン" {
//            cell.backgroundColor = UIColor(red: 0.2,green: 0.9,blue: 0.9,alpha: 1)
//        }else if element.category == "ランタノイド" {
//            cell.backgroundColor = UIColor(red: 0.7, green: 0.8, blue: 0.7, alpha: 1)
//        }else if element.category == "アクチノイド" {
//            cell.backgroundColor = UIColor(red: 0.6, green: 0.7, blue: 0.8, alpha: 1)
//        }else {
//            cell.backgroundColor = UIColor.whiteColor()
//        }
//        if element.name == "empty" {
//            cell.backgroundColor = UIColor.clearColor()
//            return cell
//        }
//        cell.elementName.text = element.symbol
//        //getTemperature的なものをつくる
////        if temperature > element.boilingPoint {
////            cell.alpha = 0.8
////            cell.layer.cornerRadius = 24
////            cell.elementName.textColor = UIColor.grayColor()
////        }else if temperature > element.meltingPoint {
////            cell.layer.cornerRadius = 13
////            cell.elementName.textColor = UIColor.blueColor()
////        }
//        if indexPath.row == selectedCell[0] && indexPath.section == selectedCell[1] {
//            cell.backgroundColor = UIColor(red: 1.0,green: 0.1,blue: 0.3,alpha: 1)
//        }
//        if element.boilingPoint == 7000 {
//            cell.layer.cornerRadius = 0
//            cell.elementName.textColor = UIColor.blackColor()
//        }
//        return cell
//    }

}
