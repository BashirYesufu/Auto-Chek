//
//  CarFeaturesViewController.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import UIKit

class CarFeaturesViewController: UIViewController {
    
    var carFeatures: CarFeature?
    
    lazy var carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "carTest")
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    lazy var carName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Carname"
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var carFuelType: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Petrol"
        return label
    }()
    
    lazy var carTransmission: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Automatic"
        return label
    }()
    
    lazy var carEngine: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "V(6)"
        return label
    }()
    
    lazy var carWheels: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2WD"
        return label
    }()
    
    lazy var carMilage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2WD"
        return label
    }()
    
    lazy var carLocation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ikeja, Lagos"
        return label
    }()
    
    lazy var carColors: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Interior: Black\nExterior: Sliver"
        label.numberOfLines = 2
        return label
    }()
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.layer.cornerRadius = 20
        button.backgroundColor = .black
        button.setTitleColor(.yellow, for: .normal)
        button.setTitle("Buy This Car", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        //print(carFeatures)
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
        addConstraints()
    }
    
    func setupSubviews() {
        view.addSubview(carImage)
        view.addSubview(carName)
        view.addSubview(carFuelType)
        view.addSubview(carTransmission)
        view.addSubview(carEngine)
        view.addSubview(carWheels)
        view.addSubview(carMilage)
        view.addSubview(carLocation)
        view.addSubview(carLocation)
        
        
        view.addSubview(addButton)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            carImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            carImage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            carImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carImage.heightAnchor.constraint(equalToConstant: view.frame.height / 3),
            carName.topAnchor.constraint(equalTo: carImage.bottomAnchor, constant: 10),
            carName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            
            
            addButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            addButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            addButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
        ])
    }
    
    func getData(_ data: CarFeature) {
        carFeatures = data
    }
}
