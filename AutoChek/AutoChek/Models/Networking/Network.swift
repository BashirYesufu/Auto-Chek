//
//  Network.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import UIKit
import SVGKit

class Network {
    //MARK: - Method to get data for make and logo
   public func getMakeAndLogo(completionHandler: @escaping (MakeAndLogoModel) -> ()) {
        let url = "https://api-prod.autochek.africa/v1/inventory/make?popular=true"
                if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let json = try JSONDecoder().decode(MakeAndLogoModel.self, from: data)
                        completionHandler(json)
                    } catch {
                    }
                }
            }.resume()
        }
    }
    
    //MARK: - Method to load imageview with image from url using svg dependency
    func loadImage(_ urlString: String, _ imageView: UIImageView){
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard error == nil else { return }
            DispatchQueue.main.async {
                guard let image: SVGKImage = SVGKImage(contentsOf: url) else { return }
                imageView.image = image.uiImage
            }
        }.resume()
    }
}
