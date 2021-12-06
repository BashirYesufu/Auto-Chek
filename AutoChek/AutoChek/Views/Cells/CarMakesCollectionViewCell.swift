//
//  CarMakesCollectionViewCell.swift
//  AutoChek
//
//  Created by mac on 12/4/21.
//

import UIKit

class CarMakesCollectionViewCell: UICollectionViewCell {
    static let identifier = "Cell"
    
    lazy var carDetailsView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        view.layer.cornerRadius = 20
        view.isUserInteractionEnabled = true
        return view
    }()
    lazy var carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "carTest")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        return imageView
    }()
    lazy var carName: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Car Name"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        return textView
    }()
    lazy var carYear: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Year"
        textView.font = UIFont.boldSystemFont(ofSize: 13)
        
        return textView
    }()
    lazy var carPrice: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "₦900,000"
        return textView
    }()
    lazy var carLocation: UILabel = {
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Lagos"
        textView.font = UIFont.boldSystemFont(ofSize: 14)
        return textView
    }()
    private let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.cornerRadius = 20
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
        carDetailsView.addSubview(carLocation)
        carDetailsView.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            carDetailsView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            carDetailsView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            carDetailsView.bottomAnchor.constraint(equalTo: bottomAnchor),
            carDetailsView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            carImage.topAnchor.constraint(equalTo: carDetailsView.topAnchor,constant: -50),
            carImage.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carImage.rightAnchor.constraint(equalTo: carDetailsView.rightAnchor,constant: -10),
            carImage.bottomAnchor.constraint(equalTo: carDetailsView.bottomAnchor, constant: -100),
            carName.topAnchor.constraint(equalTo: carImage.bottomAnchor,constant: 10),
            carName.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carLocation.topAnchor.constraint(equalTo: carName.bottomAnchor,constant: 5),
            carLocation.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carPrice.topAnchor.constraint(equalTo: carLocation.bottomAnchor,constant: 5),
            carPrice.leftAnchor.constraint(equalTo: carDetailsView.leftAnchor,constant: 10),
            carYear.topAnchor.constraint(equalTo: carImage.bottomAnchor,constant: 10),
            carYear.rightAnchor.constraint(equalTo: carDetailsView.rightAnchor,constant: -10),
            addButton.topAnchor.constraint(equalTo: carYear.bottomAnchor,constant: 20),
            addButton.rightAnchor.constraint(equalTo: carDetailsView.rightAnchor,constant: -10),
        ])
    }
}
