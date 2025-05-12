//
//  DogDataSource.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 18.11.2023.
//

import Foundation

struct DogDataSource {

    private let baseURL = "https://dog.ceo/api/"
    weak var delegate: DogDataSourceDelegate?

    func loadDogList() {
        let session = URLSession.shared

        if let url = URL(string: "\(baseURL)breeds/list") {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            let dataTask = session.dataTask(with: request) { data, response, error in
                guard let data else { return }
                let decoder = JSONDecoder()
                do {
                    print(response!)
                    let dogListResponse = try decoder.decode(DogListResponse.self, from: data)
                    let dogList = dogListResponse.message.map { Dog(breed: $0) }

                    DispatchQueue.main.async {
                        self.delegate?.dogListLoaded(dogList: dogList)
                    }
                } catch {
                    print("Error decoding dog list response: \(error)")
                }
            }
            dataTask.resume()
        }
    }
}
