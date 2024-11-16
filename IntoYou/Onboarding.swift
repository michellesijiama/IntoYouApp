import SwiftUI

struct Onboarding: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                NavigationTop(title: "Onboarding")
                
                VStack(alignment: .center, spacing: 20) {  Image("landingImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 214)
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Start Getting Into You")
                            .font(.title)
                            .multilineTextAlignment(.leading)
                        
                        Text("Your thoughts have a home here. I'm ready to listen, share, and grow with you.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                        .padding(0)}
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 0)
                .frame(maxWidth: .infinity, alignment: .center)
            
            
            }
        }
                
    }
}
#Preview {
    Onboarding()
}

