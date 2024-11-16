//
//  Buttons.swift
//  IntoYou
//
//  Created by Sijia Ma on 11/16/24.
//

import SwiftUI

struct Buttons: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(alignment: .center, spacing: 10) {
                Text(title)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Constants.White)
            }
            .padding(10)
            .frame(width: 343, height: 50, alignment: .center)
            .background(Constants.Black)
            .cornerRadius(24)
        }
    }
}

#Preview {
    Buttons(title: "Button Text", action: {
        print("Button tapped!")
    })
}
