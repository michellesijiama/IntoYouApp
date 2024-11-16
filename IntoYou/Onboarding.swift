import SwiftUI

struct Onboarding: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) { // Remove unnecessary gaps
                    // Custom navigation bar
                    NavigationTop(title: "IntoYou")
                    
                    VStack(alignment: .center, spacing: 32) {
                        // Image Section
                        Image("landingImage")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 214)
                        
                        // Text Section
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Start Getting Into You")
                                .font(.title)
                                .multilineTextAlignment(.leading)
                            
                            Text("Your thoughts have a home here. I'm ready to listen, share, and grow with you.")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                        }
                        .padding(.horizontal,16)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                        
                        // Buttons Section
                        VStack(alignment: .leading, spacing: 8) {
                            Button(action: {
                                print("Continue with Apple tapped!")
                            }) {
                                HStack {
                                    Image(systemName: "applelogo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                    Text("Continue with Apple")
                                        .font(.headline)
                                }
                                .frame(maxWidth: .infinity)
                            }
                            .frame(height: 50)
                            .buttonStyle(.borderedProminent)
                            .controlSize(.large)
                            .buttonBorderShape(.roundedRectangle(radius: 24))
                            
                            Button(action: {
                                print("Continue with Google tapped!")
                            }) {
                                HStack {
                                    Image("icon-Google")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                    Text("Continue with Google")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                            }
                            .frame(height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24)
                                    .stroke(Color.black, lineWidth: 2)
                            )
                            .cornerRadius(24)
                            
                            Button(action: {
                                print("Continue with Email tapped!")
                                
                            }) {
                                
                                // NavigationLink for Continue with Email
                                NavigationLink(destination: SignUpUsingEmail()) {
                                    HStack {
                                        Image(systemName: "envelope")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 20, height: 20)
                                        Text("Continue with Email")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                        
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                }
                                .frame(height: 50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 24)
                                        .stroke(Color.black, lineWidth: 2)
                                )
                                .cornerRadius(24)
                            }
                        }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.horizontal, 16)
//                    .background(Color.green)
                    
                    
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
            .navigationBarHidden(true) // Hide the native navigation bar
        }
    }
}
}


#Preview {
    Onboarding()
}

