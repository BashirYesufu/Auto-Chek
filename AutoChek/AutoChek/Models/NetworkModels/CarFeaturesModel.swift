//
//  CarFeaturesModel.swift
//  AutoChek
//
//  Created by mac on 12/6/21.
//

import Foundation

struct CarFeature: Codable {
    let fuelType, transmission, state, city, mileageUnit, interiorColor, exteriorColor, engineType, carName: String
    let marketplacePrice, mileage: Int
    let model: ModelDetail
    let bodyType: BodyDetails
}

struct ModelDetail: Codable {
    let wheelType: String
}

struct BodyDetails: Codable {
    let imageUrl: String
}
