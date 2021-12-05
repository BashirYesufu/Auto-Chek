//
//  CarMakesCollectionViewCell.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit

class CarMakesCollectionViewCell: UICollectionViewCell {
    static let identifier = "Cell"
    
    let carDetailsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .link
        view.layer.cornerRadius = 20
        
        view.isUserInteractionEnabled = true
        return view
    }()
    private let carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "star")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
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
    private let carRating: UIImageView = {
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
        textView.text = "Lagos"
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
        setUpCellViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpCellViews() {
        addSubview(carDetailsView)
        carDetailsView.addSubview(carImage)
        carDetailsView.addSubview(carName)
        carDetailsView.addSubview(carYear)
        carDetailsView.addSubview(carPrice)
//        addSubview(carName)
//        addSubview(carYear)
//        addSubview(carImage)
//        addSubview(carPrice)
//        addSubview(carLocation)
//        addSubview(carRating)
//        addSubview(addButton)
        
        NSLayoutConstraint.activate([
            carDetailsView.topAnchor.constraint(equalTo: topAnchor),
            carDetailsView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            carDetailsView.bottomAnchor.constraint(equalTo: bottomAnchor),
            carDetailsView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            carImage.topAnchor.constraint(equalTo: carDetailsView.topAnchor,constant: -50),
            carImage.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carImage.rightAnchor.constraint(equalTo: carDetailsView.rightAnchor,constant: -10),
            carImage.bottomAnchor.constraint(equalTo: carDetailsView.bottomAnchor, constant: -100),
            carName.topAnchor.constraint(equalTo: carImage.bottomAnchor,constant: 10),
            carName.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carYear.topAnchor.constraint(equalTo: carName.bottomAnchor,constant: 5),
            carYear.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carPrice.topAnchor.constraint(equalTo: carYear.bottomAnchor,constant: 5),
            carPrice.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
        ])
    }
}
