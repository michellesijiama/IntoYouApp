//
//  SignUpUsingEmail.swift
//  IntoYou
//
//  Created by Sijia Ma on 11/16/24.
//

import SwiftUI

struct SignUpUsingEmail: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    VStack(alignment: .center, spacing: 79) {
                        // Image Section
                        Image("landingImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .padding(.top, 150)
                        
                        VStack(alignment: .leading, spacing: 12) { //buttons
                            // Text Section
                            Text("Enter Email")
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                            // Enter Email Section
                            VStack(alignment: .leading, spacing: 8) {
                                CustomTextField(placeholder: "Enter Your Email")
                         
                                
                                Button(action: {
                                    print("Register button tapped!")
                                }) {
                                    Text("Register")
                                        .font(.headline)
                                        .frame(maxWidth: .infinity)
                                }
                                .frame(height: 50)
                                .buttonStyle(.borderedProminent)
                                .controlSize(.large)
                                .buttonBorderShape(.roundedRectangle(radius: 24))
    

                            }
                            .padding(0)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                            
                            
                        }
                        .padding(.horizontal, 16)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    
                    }
                }
//                .background(Color.red)
                .padding(.horizontal, 16)
                .padding(.vertical, 40)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                
                // Footer Section
                Text("By continuing, you agree to our Terms and acknowledge our Privacy Policy.")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 34)
                    .padding(.horizontal, 16)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment:.top)
//            .background(Color.green)
        }
}
    }

#Preview {
    SignUpUsingEmail()
}
