//
//  CarDetailsModel.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import Foundation

struct CarDetailsModel: Codable {
    let result: [Result]
}

struct Result: Codable {
    let id, title, imageUrl, city : String
    let marketplacePrice, year: Int
}
