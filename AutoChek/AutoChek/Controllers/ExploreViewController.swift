//
//  ViewController.swift
//  AutoChek
//
//  Created by mac on 12/3/21.
//

import UIKit

class ExploreViewController: UIViewController {
    
    
    // MARK: - Icon
    private let exploreIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "explore")
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
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
    
    // MARK: - Icon
    private let cartIcon: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Cart-Icon"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - SearchField
    private let searchBar: UISearchTextField = {
        let textField = UISearchTextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.white.cgColor
        textField.placeholder = "Search"
        textField.autocapitalizationType = .none
        textField.layer.cornerRadius = 10
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubViews()
        addConstraints()
    }
    
    func addSubViews() {
        view.addSubview(exploreIcon)
        view.addSubview(titleLabel)
        view.addSubview(cartIcon)
        view.addSubview(searchBar)
    }
    
    func addConstraints() {
        NSLayoutConstraint.activate([
            exploreIcon.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            exploreIcon.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            titleLabel.leftAnchor.constraint(equalTo: exploreIcon.rightAnchor, constant: 20),
            searchBar.topAnchor.constraint(equalTo: exploreIcon.bottomAnchor, constant: 20),
            searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            searchBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            
            
            
        ])
    }
    
}

