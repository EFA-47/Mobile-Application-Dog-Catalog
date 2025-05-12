//
//  LoadingView.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 20.11.2023.
//

import SwiftUI

struct LoadingView: View {

    var body: some View {
        VStack(spacing: Spacing.spacing_1) {
            ProgressView()
            Text("Loading...")
        }
    }
}

#Preview {
    LoadingView()
}
