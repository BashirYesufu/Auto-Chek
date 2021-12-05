//
//  ExploreViewController+Extension.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit
import Kingfisher

extension ExploreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: Protocol Stub for number of items in a collectionview
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var cellItems = 12
        if collectionView == brandCollectionView {
        cellItems = logoAndName?.makeList.count ?? 12
        }
        return cellItems
    }
    
    //MARK: Protocol Stub for displaying cells in a collectionview
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var finalCell = UICollectionViewCell()
        if collectionView  == brandCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BrandsCollectionViewCell.identifier, for: indexPath) as? BrandsCollectionViewCell else { return UICollectionViewCell() }
            
            let imageURL = logoAndName?.makeList[indexPath.item].imageUrl ?? ""
            
            DispatchQueue.main.async {
                self.networkData.loadImage(imageURL, cell.brandLogo)
                cell.brandLogo.kf.setImage(with: URL(string: imageURL))
                cell.brandName.text = self.logoAndName?.makeList[indexPath.item].name
            }
            
            finalCell = cell
        }
        if collectionView  == carMakeCollectionView {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarMakesCollectionViewCell.identifier, for: indexPath) as? CarMakesCollectionViewCell else { return UICollectionViewCell() }
            finalCell = cell
        }
        return finalCell
    }
    
    //MARK: Protocol Stub for determining size of a cell in a collection view
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
