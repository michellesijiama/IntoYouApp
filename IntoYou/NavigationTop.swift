//
//  NavigationTop.swift
//  IntoYou
//
//  Created by Sijia Ma on 11/16/24.
//

import SwiftUI

struct NavigationTop: View {
    let title: String // Accept a title for flexibility
    
    var body: some View {
        Text(title)
            .font(.custom("KronaOne-Regular", size: 24))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
            .foregroundColor(Color("Black"))
    }
}

#Preview {
    NavigationTop(title: "Sample Title") // Provide the required title parameter here
}
