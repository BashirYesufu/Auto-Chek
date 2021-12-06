//
//  CarFeaturesViewController.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import UIKit

class CarFeaturesViewController: UIViewController {
    
    var carFeatures: CarFeature?
    
    
    private let carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "carTest")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let carName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Carname"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
    }
    
    func setupSubviews() {
        view.addSubview(carImage)
        view.addSubview(carName)
        
        NSLayoutConstraint.activate([
            carImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            carImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            carImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            carImage.heightAnchor.constraint(equalToConstant: 400),
        ])
    }
}
