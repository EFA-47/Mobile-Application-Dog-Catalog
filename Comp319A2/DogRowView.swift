//
//  DogRowView.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 20.11.2023.
//

import SwiftUI

struct DogRowView: View {

    private let dog: Dog

    init(dog: Dog) {
        self.dog = dog
    }

    var body: some View {
        HStack(spacing: .zero) {
            Text(dog.breed)
            Spacer()
        }
    }
}

#Preview {
    DogRowView(dog: Dog(breed: "test"))
}
