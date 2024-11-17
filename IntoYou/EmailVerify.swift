//
//  EmailVerify.swift
//  IntoYou
//
//  Created by Sijia Ma on 11/16/24.
//

import SwiftUI

struct EmailVerify: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            
                            VStack(alignment: .center, spacing: 20) {
//                                VStack(spacing: 0) { // Remove unnecessary gaps
//                                    // Custom navigation bar
//                                    NavigationTop(title: "IntoYou")
            
            VStack(alignment: .center, spacing: 32) {
                // Image Section
                Image(systemName:"envelope.badge")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100)
                
                // Text Section
                VStack(alignment: .center, spacing: 8) {
                    Text("Verify your email")
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    Text("We sent a verification email to abc@gmail.com Please tap the link inside that email to continue.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity, alignment: .topLeading)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 40)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            //                        .background(Color.green)
            
            
            // Footer Section
            Text("By continuing, you agree to our Terms and acknowledge our Privacy Policy.")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 34)
                .padding(.horizontal, 16)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.bottom)
        //                .background(Color.red)
    }
}
}


#Preview {
    NavigationView {
        EmailVerify()
    }
}
