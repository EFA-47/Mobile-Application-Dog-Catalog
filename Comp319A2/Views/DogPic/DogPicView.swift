//
//  DogPicView.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 21.11.2023.
//

import SwiftUI

struct DogPicView: View {
    let dog: Dog

    @State private var imageUrl: URL?

    var body: some View {
        VStack {
            if let imageUrl = imageUrl {
                AsyncImage(url: imageUrl) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    case .empty:
                        Text("Loading...")
                    case .failure:
                        Text("Failed to load image")
                    @unknown default:
                        Text("Unknown state")
                    }
                }
            } else {
                Text("Loading...")
            }
        }
        .onAppear {
            loadImage()
        }
    }

private func loadImage() {
        let url = URL(string: "https://dog.ceo/api/breed/\(dog.breed)/images/random")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print(response!)
                return
            }
            let decoder = JSONDecoder()
            do {
                let imageResponse = try decoder.decode(ImageResponse.self, from: data)
                imageUrl = URL(string: imageResponse.message)
            } catch {
                print("Error decoding image response: \(error)")
            }
        }.resume()
    }
}

struct ImageResponse: Decodable {
    let message: String
    let status: String
}
