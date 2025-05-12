//
//  TitleText.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 17.11.2023.
//

import SwiftUI

struct TitleText: View {

    private let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .lineLimit(2)
            .font(.title2)
            .padding(.vertical, Spacing.spacing_4)
            .padding(.horizontal, Spacing.spacing_2)
    }
}

#Preview {
    TitleText(text: "Test")
}
