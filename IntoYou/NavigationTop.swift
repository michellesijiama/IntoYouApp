import SwiftUI

struct NavigationTop: View {
    let title: String // Accept a title for flexibility
    
    var body: some View {
        VStack {
            Spacer() // Pushes the content to the bottom
            
            Text(title)
                .font(.custom("KronaOne-Regular", size: 24))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16)
                .foregroundColor(Color("Black"))
        }
        .frame(height: 44) // Fixed height for the navigation bar
//        .background(Color.gray.opacity(0.1))
    }
}

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Use your custom NavigationTop
                NavigationTop(title: "IntoYou")
                
                ScrollView {
                }
                .padding(.horizontal)
            }
            .edgesIgnoringSafeArea(.top) // Extend navigation top to the safe area
            .navigationBarHidden(true) // Hide the default navigation bar
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}

