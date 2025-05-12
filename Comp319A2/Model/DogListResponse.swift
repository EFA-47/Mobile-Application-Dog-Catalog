//
//  DogListResponse.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 22.11.2023.
//

import Foundation

struct DogListResponse: Decodable {
    let message: [String]
    let status: String
}
