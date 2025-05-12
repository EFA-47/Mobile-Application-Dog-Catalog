//
//  DogListView.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 20.11.2023.
//

import SwiftUI

struct DogListView: View {

    @StateObject private var viewModel = DogListViewModel()
    @State private var selectedDog: Dog?

    var body: some View {
        NavigationView {
            if viewModel.isLoading {
                LoadingView()
                    .onAppear {
                        viewModel.loadDogList()
                    }
            } else {
                List(viewModel.dogList, id: \.self) { dog in DogRowView(dog: dog).onTapGesture {
                            selectedDog = dog
                        }
                }
                .navigationTitle("Dog List")
                .sheet(item: $selectedDog) { dog in
                    DogPicView(dog: dog)
                }
            }
        }
    }
}

#Preview {
    DogListView()
}
