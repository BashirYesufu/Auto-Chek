//
//  ViewController.swift
//  AutoChek
//
//  Created by mac on 12/3/21.
//

import UIKit

class ExploreViewController: UIViewController {
    
    let networkData = Network()
    
    // MARK: - Icon
    private let exploreIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "explore")
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        return imageView
    }()
    
    // MARK: - Label
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Explore"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        label.numberOfLines = 1
        return label
    }()
    
    // MARK: - Button
    private let cartIcon: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "bag"), for: .normal)
        button.heightAnchor.constraint(equalToConstant: 20).isActive = true
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        return button
    }()
    
    // MARK: - SearchField
    private let searchBar: UISearchTextField = {
        let textField = UISearchTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor.white
        textField.heightAnchor.constraint(equalToConstant: 60).isActive = true
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.white.cgColor
        textField.placeholder = "Search"
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        return textField
    }()
    
    // MARK: - Button
    private let preferenceButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "filter"), for: .normal)
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        button.widthAnchor.constraint(equalToConstant: 60).isActive = true
        return button
    }()
    
    // MARK: - Collection View
    lazy var brandCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 15
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor =  .white
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.isUserInteractionEnabled = true
        return collectionView
    }()
    
    // MARK: - Collection View
    lazy var carMakeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 100
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.showsVerticalScrollIndicator = false
        collectionView.isUserInteractionEnabled = true
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubViews()
        addConstraints()
        brandCollectionView.register(BrandsCollectionViewCell.self, forCellWithReuseIdentifier: BrandsCollectionViewCell.identifier)
        carMakeCollectionView.register(CarMakesCollectionViewCell.self, forCellWithReuseIdentifier: CarMakesCollectionViewCell.identifier)
    }
    
    func addSubViews() {
        view.addSubview(exploreIcon)
        view.addSubview(titleLabel)
        view.addSubview(cartIcon)
        view.addSubview(searchBar)
        view.addSubview(preferenceButton)
        view.addSubview(brandCollectionView)
        view.addSubview(carMakeCollectionView)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            exploreIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            exploreIcon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            titleLabel.leftAnchor.constraint(equalTo: exploreIcon.rightAnchor, constant: 20),
            titleLabel.bottomAnchor.constraint(equalTo: exploreIcon.bottomAnchor),
            cartIcon.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            cartIcon.bottomAnchor.constraint(equalTo: exploreIcon.bottomAnchor),
            preferenceButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            preferenceButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            searchBar.rightAnchor.constraint(equalTo: preferenceButton.leftAnchor, constant: -20),
            brandCollectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20),
            brandCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            brandCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            brandCollectionView.heightAnchor.constraint(equalToConstant: 90),
            carMakeCollectionView.topAnchor.constraint(equalTo: brandCollectionView.bottomAnchor, constant: 10),
            carMakeCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            carMakeCollectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            carMakeCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
        ])
    }
    
}

