//
//  CarMakesCollectionViewCell.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit

class CarMakesCollectionViewCell: UICollectionViewCell {
    static let identifier = "Cell"
    
    private let productImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    private let productNametextView: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Product Name"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.font = UIFont(name: "NunitoSans-Bold", size: 18)
        return textView
    }()
    private let productBrandTextView: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Brand"
        textView.font = UIFont.boldSystemFont(ofSize: 13)
        textView.font = UIFont(name: "NunitoSans-Regular", size: 13)
        return textView
    }()
    private let productRateLabel: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "(5.0)"
        textView.font = UIFont(name: "NunitoSans-Regular", size: 14)
        
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
    private let productPriceTextView: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "$111.67"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        textView.font = UIFont(name: "NunitoSans-Semibold", size: 14)
        return textView
    }()
    private let productImageV: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.layer.cornerRadius = 15
        view.isUserInteractionEnabled = true
        return view
    }()
    private let productDetailsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.isUserInteractionEnabled = true
        return view
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
}
