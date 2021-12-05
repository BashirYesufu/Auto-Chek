//
//  ExploreCollectionViewCell.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit

class BrandsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "Cell"
    
     lazy var brandLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "filter")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var brandName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Nike"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addCellItems()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addCellItems() {
        addSubview(brandLogo)
        addSubview(brandName)
        NSLayoutConstraint.activate([
            brandLogo.topAnchor.constraint(equalTo: topAnchor),
            brandLogo.leftAnchor.constraint(equalTo: leftAnchor),
            brandLogo.rightAnchor.constraint(equalTo: rightAnchor),
            brandName.centerXAnchor.constraint(equalTo: centerXAnchor),
            brandLogo.heightAnchor.constraint(equalToConstant: 60),
            brandName.topAnchor.constraint(equalTo: brandLogo.bottomAnchor, constant: 5)
            
        ])
    }
}
