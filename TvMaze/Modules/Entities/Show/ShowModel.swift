//
//  ShowModel.swift
//  TvMaze
//
//  Created by Fabrizio Sposetti on 08/10/2019.
//  Copyright © 2019 Fabrizio Sposetti. All rights reserved.


import Foundation

struct ShowModel: Codable {
    let id: Int
    let url: String
    let name: String
    let image: Image
}

// MARK: - Image
struct Image: Codable {
    let medium, original: String
}
