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
                        print("Here is the data: \(json)")
                        completionHandler(json)
                    } catch {
                        print("\(error.localizedDescription)")
                    }
                }
            }.resume()
        }
    }
    
    //MARK: - Method to load imageview with image from url using svg dependency
    func loadImage(_ urlString: String, _ imageView: UIImageView){
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data , error == nil else {
                return
            }
            DispatchQueue.main.async {
                print(data)
                
                guard let image: SVGKImage = SVGKImage(contentsOf: url) else {
                    return
                }
                imageView.image = image.uiImage
                guard let img  = UIImage(data: data) else { return }
                imageView.image = img
            }
        }.resume()
    }
}
