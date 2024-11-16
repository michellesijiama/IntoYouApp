import SwiftUI

struct CustomEmailTextField: View {
    @Binding var email: String // Use a binding to allow parent view to manage the state
    @State private var isValid: Bool = true // State to track if the input is valid

    var placeholder: String = "Enter your email"

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // TextField with validation
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: "envelope") // Optional email icon
                    .foregroundColor(isValid ? .gray : .red) // Icon color based on validation

                TextField(placeholder, text: $email)
                    .keyboardType(.emailAddress) // Sets the keyboard to email format
                    .autocapitalization(.none) // Disable auto-capitalization for email
                    .disableAutocorrection(true) // Disable autocorrect for email
                    .onChange(of: email) { newValue in
                        isValid = true // Reset validation state as the user types
                    }
                    .onSubmit {
                        // Validate the email when the user presses Enter
                        isValid = isValidEmail(email)
                    }
                    .foregroundColor(isValid ? .black : .red) // Text color changes if invalid
            }
            .padding(10) // Inner padding
            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .leading) // Frame constraints
            .cornerRadius(24) // Rounded corners
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .inset(by: 0.5)
                    .stroke(isValid ? .black : .red, lineWidth: 1) // Border color based on validation
            )

            // Validation message
            if !isValid {
                Text("Please enter a valid email address")
                    .font(.caption)
                    .foregroundColor(.red)
            }
        }
    }

    // Email validation function
    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}

struct SignUpUsingEmailView: View {
    @State private var email: String = "" // Email input state

    var body: some View {
        VStack(spacing: 20) {
            CustomEmailTextField(email: $email) // Pass the email state as a binding

            Button(action: {
                print("Register")
            }) {
                Text("Register")
                    .font(.headline)
                    .foregroundColor(.white) // Text color
                    .frame(maxWidth: .infinity, maxHeight: 50)
            }
            .frame(height: 50)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 24))
            .controlSize(.large)
            
    
        }
        .padding()
        .navigationTitle("Sign Up")
        .navigationBarBackButtonHidden(false) // Use default back button
        .onDisappear {
            email = "" // Clear email when the view disappears
        }
    }
}

#Preview {
    NavigationView {
        SignUpUsingEmailView()
    }
}

