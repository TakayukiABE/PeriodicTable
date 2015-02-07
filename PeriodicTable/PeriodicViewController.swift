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
    
    
    var periodicModel = PeriodicModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.periodicTable.registerNib(Nib, forCellWithReuseIdentifier: "cell")
       // self.periodicTable.registerClass(PeriodicCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        self.view.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(periodicTable)
    }
    override func viewWillLayoutSubviews() {
        let frame = self.view.frame
        self.periodicTable.frame = CGRectMake(frame.origin.x + 27, 50, frame.size.width - 50, frame.size.height - 272)
        self.periodicTable.bounds = CGRectInset(self.view.frame, 30.0, 136)
        periodicTable.delegate = self
        periodicTable.dataSource = self
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 19
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell:PeriodicCollectionViewCell = periodicTable.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as PeriodicCollectionViewCell
        println(periodicModel.elementArray[indexPath.row][indexPath.section].symbol)
        cell.elementName.text = periodicModel.elementArray[indexPath.row][indexPath.section].symbol
        
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
