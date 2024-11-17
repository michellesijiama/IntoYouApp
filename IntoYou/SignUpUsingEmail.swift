import SwiftUI

struct SignUpUsingEmail: View {
    @State private var email: String = "" // State to hold the email input
    @State private var navigateToEmailVerify = false // State to control navigation
    @State private var emailError: String? = nil // State for email validation error
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all) // Ensure background covers the entire screen
            
            VStack {
                // Main content
                VStack(alignment: .center, spacing: 79) {
                    // Image Section
                    Image("landingImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300)
                        .padding(.top, 150)
                    
                    // Email Input and Register Section
                    VStack(alignment: .leading, spacing: 12) {
                        // Text Section
                        Text("Enter Email")
                            .font(.title)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .topLeading)
                        
                        // Email Input and Register Button Section
                        VStack(alignment: .leading, spacing: 8) {
                            // Email Input with Icon
                            HStack(alignment: .center, spacing: 12) {
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                    .frame(width: 24, height: 24)
                                
                                TextField("Enter Your Email", text: $email)
                                    .keyboardType(.emailAddress)
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                                    .foregroundColor(.black)
                            }
                            .padding(12)
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .background(Color.white)
                            .cornerRadius(24)
                            .overlay(
                                RoundedRectangle(cornerRadius: 24)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            
                            // Show validation error if any
                            if let emailError = emailError {
                                Text(emailError)
                                    .font(.footnote)
                                    .foregroundColor(.red)
                            }
                            
                            // Navigation Button for Register
                            NavigationLink(
                                destination: EmailVerify(),
                                isActive: $navigateToEmailVerify // Controlled by state
                            ) {
                                EmptyView() // Hidden NavigationLink
                            }
                            
                            Button(action: {
                                if isValidEmail(email) {
                                    emailError = nil // Clear error
                                    navigateToEmailVerify = true // Trigger navigation
                                } else {
                                    emailError = "Please enter a valid email address." // Show error
                                }
                            }) {
                                Text("Register")
                                    .font(.headline)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 50)
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(24)
                            }
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    }
                    .padding(.horizontal, 16)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
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
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .navigationBarTitleDisplayMode(.inline) // Keep the navigation bar clean
        .navigationBarBackButtonHidden(false) // Show back button to go to the previous page
    }
    
    // Helper function for email validation
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}

#Preview {
    NavigationView {
        SignUpUsingEmail()
    }
}

