import SwiftUI

struct CustomTextField: View {
    @State private var text: String = "" // State variable to bind the text field

    var placeholder: String = "Enter text" // Placeholder text

    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: "envelope") // Optional icon inside the text field
                .foregroundColor(.gray)
            TextField(placeholder, text: $text) // TextField with placeholder and binding
                .font(.body)
                .foregroundColor(.black)
        }
        .padding(10) // Inner padding
        .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .leading) // Frame constraints
        .cornerRadius(24) // Rounded corners
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .inset(by: 0.5)
                .stroke(.black, lineWidth: 1) // Black border with 1px stroke
        )
    }
}

#Preview {
    CustomTextField()
}

