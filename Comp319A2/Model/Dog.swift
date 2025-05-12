//
//  Dog.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 18.11.2023.
//

import Foundation

struct Dog: Identifiable, Hashable {
    let id = UUID()
    let breed: String
    var imageName: String {
        "breed: \(breed)"
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: Dog, rhs: Dog) -> Bool {
        return lhs.id == rhs.id
    }
}
