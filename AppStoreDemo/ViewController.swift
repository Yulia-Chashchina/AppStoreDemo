//
//  ViewController.swift
//  AppStoreDemo
//
//  Created by Юлия Чащина on 27/12/2018.
//  Copyright © 2018 Yulia Chashchina. All rights reserved.
//

import UIKit

class FeaturedAppsController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    
    var appCategories: [AppCategory]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appCategories = AppCategory.sampleAppCategories()
        
        collectionView.backgroundColor = UIColor.white
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        
        cell.appCategory = appCategories?[indexPath.item]
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = appCategories?.count{
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 230)
    }


}


