//
//  DogListViewModel.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 20.11.2023.
//

import Foundation

class DogListViewModel: ObservableObject {

    @Published var isLoading = true
    @Published var dogList: [Dog] = []
    private var dataSource = DogDataSource()

    init() {
        dataSource.delegate = self
    }

    func loadDogList() {
        dataSource.loadDogList()
    }
}

extension DogListViewModel: DogDataSourceDelegate {

    func dogListLoaded(dogList: [Dog]) {
        isLoading = false
        self.dogList = dogList
    }
}
