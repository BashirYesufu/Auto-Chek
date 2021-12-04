//
//  CarMakesCollectionViewCell.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit

class CarMakesCollectionViewCell: UICollectionViewCell {
    static let identifier = "Cell"
    
    private let carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    private let carName: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Car Name"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        
        return textView
    }()
    private let carYear: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Year"
        textView.font = UIFont.boldSystemFont(ofSize: 13)
        
        return textView
    }()
    private let carPrice: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "N90,000"
        return textView
    }()
    private let productRateView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "star")
        return imageView
    }()
    private let carLocation: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "$111.67"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        return textView
    }()
    private let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 17
        button.backgroundColor = .black
        button.setTitleColor(.yellow, for: .normal)
        button.setTitle("+", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
