//
//  Network.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import UIKit

class Network {
    //MARK: - Method to get current weather data from API
   public func pullJSONData(completionHandler: @escaping (MakeAndLogoModel) -> ()) {
        let url = "https://api-prod.autochek.africa/v1/inventory/make?popular=true"
        
        if let url = URL(string: url) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let json = try JSONDecoder().decode(MakeAndLogoModel.self, from: data)
                        print("Here is the data")
                        print(json)
                        completionHandler(json)
                    } catch {
                        print("\(error.localizedDescription)")
                    }
                }
            }.resume()
        }
    }
}
