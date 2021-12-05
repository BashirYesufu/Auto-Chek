//
//  CarFeaturesViewController.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import UIKit

class CarFeaturesViewController: UIViewController {

    let scroller: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        scroll.backgroundColor = .yellow
        return scroll
    }()
    
    let carImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scroller)
        NSLayoutConstraint.activate([
            scroller.topAnchor.constraint(equalTo: view.topAnchor),
            scroller.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scroller.leftAnchor.constraint(equalTo: view.leftAnchor),
            scroller.rightAnchor.constraint(equalTo: view.rightAnchor),
        ])
    }


}
