//
//  CarFeaturesViewController.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import UIKit
import Kingfisher

class CarFeaturesViewController: UIViewController {
    
    var carID: String = ""
    var carFeatures: CarFeature?
    let networkData = Network()
    
    lazy var carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "carTest")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var carName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Toyota 4-Runner - 2010"
        label.numberOfLines = 2
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var carFuelType: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fuel Type: Petrol"
        return label
    }()
    
    lazy var carTransmission: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Transmission: Automatic"
        return label
    }()
    
    lazy var carEngine: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Engine: V(6)"
        return label
    }()
    
    lazy var carWheels: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Wheels: 2WD"
        return label
    }()
    
    lazy var carMilage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "8653 km"
        return label
    }()
    
    lazy var carLocation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Lagos Ibadan Express Way, Lagos State"
        label.numberOfLines = 2
        return label
    }()
    
    lazy var carColors: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Interior: Black"
        label.numberOfLines = 2
        return label
    }()
    
    lazy var carPrice: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "₦100,000,000"
        label.font = UIFont.boldSystemFont(ofSize: 20)
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
        networkData.getCarFeatures(carID) { [weak self] data in
            guard let strongSelf = self else { return }
            strongSelf.carFeatures = data
            if let data = strongSelf.carFeatures {
                DispatchQueue.main.async {
                    strongSelf.networkData.loadImage(data.imageUrl, strongSelf.carImage)
                    strongSelf.carImage.kf.setImage(with: URL(string: data.imageUrl))
                    strongSelf.carName.text = data.carName
                    strongSelf.carLocation.text = "\(data.city), \(data.state)"
                    strongSelf.carPrice.text = "₦\(data.marketplacePrice)"
                    strongSelf.carMilage.text = "\(data.mileage) \(data.mileageUnit)"
                    strongSelf.carTransmission.text = "Transmission: \(data.transmission)"
                    strongSelf.carFuelType.text = "Fuel Type: \(data.fuelType)"
                    strongSelf.carEngine.text = "Engine: \(data.engineType)"
                    strongSelf.carWheels.text = "Wheels: \(data.model.wheelType)"
                    strongSelf.carColors.text = "Interior: \(data.interiorColor), Exterior: \(data.exteriorColor)"
                }
            }
        }
        view.backgroundColor = .white
        navigationController?.title = "Car Details"
        setupSubviews()
        addConstraints()
        populateSubviews()
        
    }
    
    func populateSubviews() {
        
        
    }
    
    func setupSubviews() {
        view.addSubview(carImage)
        view.addSubview(carName)
        view.addSubview(carPrice)
        view.addSubview(carFuelType)
        view.addSubview(carTransmission)
        view.addSubview(carEngine)
        view.addSubview(carWheels)
        view.addSubview(carMilage)
        view.addSubview(carLocation)
        view.addSubview(carColors)
        
        
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
            carLocation.topAnchor.constraint(equalTo: carName.bottomAnchor, constant: 5),
            carLocation.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carPrice.topAnchor.constraint(equalTo: carLocation.bottomAnchor, constant: 5),
            carPrice.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carMilage.topAnchor.constraint(equalTo: carLocation.bottomAnchor, constant: 5),
            carMilage.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            
            carTransmission.topAnchor.constraint(equalTo: carPrice.bottomAnchor, constant: 30),
            carTransmission.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carFuelType.topAnchor.constraint(equalTo: carTransmission.bottomAnchor, constant: 5),
            carFuelType.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carEngine.topAnchor.constraint(equalTo: carFuelType.bottomAnchor, constant: 5),
            carEngine.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carWheels.topAnchor.constraint(equalTo: carEngine.bottomAnchor, constant: 5),
            carWheels.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            carColors.topAnchor.constraint(equalTo: carWheels.bottomAnchor, constant: 5),
            carColors.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            
            
            addButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            addButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            addButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
        ])
    }
    
    func getData(_ data: CarFeature) {
        carFeatures = data
    }
}
