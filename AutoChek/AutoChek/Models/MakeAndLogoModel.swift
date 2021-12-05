//
//  MakeAndLogo.swift
//  AutoChek
//
//  Created by mac on 12/5/21.
//

import Foundation

struct MakeAndLogoModel: Codable {
    let makeList: [MakeList]
    let pagination: Pagination
}

struct MakeList: Codable {
    let name: String
    let imageUrl: String
}

struct Pagination: Codable {
    let total: Int
}
