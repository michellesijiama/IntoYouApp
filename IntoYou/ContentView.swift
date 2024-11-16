//
//  ContentView.swift
//  IntoYou
//
//  Created by Sijia Ma on 11/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
            .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
