//
//  LongText.swift
//  comp319A2
//
//  Created by Emir Fatih AYYILDIZ on 17.11.2023.
//

import SwiftUI

struct LongText: View {

    let text: String

    init(text: String) {
        self.text = text
    }

    var body: some View {
        Text(text)
            .multilineTextAlignment(.center)
            .lineLimit(30)
    }
}

#Preview {
    LongText(text: "Test")
}
