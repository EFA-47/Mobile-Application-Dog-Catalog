//
//  HomeView.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 18.11.2023.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            NavigationLink(destination: DogListView()) {
                LinkText(text: "START")
            }
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
