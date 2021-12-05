//
//  ExploreViewController+Extension.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit

extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        if collectionView  == brandCollectionView {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: BrandsCollectionViewCell.identifier, for: indexPath)
        }
        if collectionView  == carMakeCollectionView {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarMakesCollectionViewCell.identifier, for: indexPath)
            
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var size: CGSize = CGSize()
        if collectionView  == brandCollectionView {
            size = CGSize(width: 80, height: 80)
        }
        if collectionView  == carMakeCollectionView {
            size = CGSize(width: view.frame.width - 20, height: 400)
        }
        return size
    }
}
