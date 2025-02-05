import SwiftUI

struct LanguageSelectionView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 40) {
            Text(LocalizedStringKey("Choose the language you want to use"))
                .font(.system(size: 25))
                .foregroundColor(Color.text)
                .multilineTextAlignment(.center)
                .bold()
                .padding(.bottom, 30.0)
                
            
            ZStack {
                Rectangle()
                    .frame(maxWidth: 310, minHeight: 40 , maxHeight: 60)
                        .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                        .overlay(
                            Rectangle()
                                .stroke(Color.button)
                        )
                        .padding(.horizontal)
                
                Button(action: {
                    UserDefaults.standard.set(["en"], forKey: "AppleLanguages")
                    UserDefaults.standard.synchronize()
                    dismiss()
                }) {
                                Text(LocalizedStringKey("English"))
                                    .font(.system(size: 25))
                                    .foregroundColor(.text)
                }
                .frame(maxWidth: 310, minHeight: 40, maxHeight: 60)
                .background(Color.background)
            }
            .padding(.horizontal)
            
            ZStack {
                Rectangle()
                    .frame(maxWidth: 310, minHeight: 40 , maxHeight: 60)
                        .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                        .overlay(
                            Rectangle()
                                .stroke(Color.button)
                        )
                        .padding(.horizontal)
                
                Button(action: {
                    UserDefaults.standard.set(["sk"], forKey: "AppleLanguages")
                    UserDefaults.standard.synchronize()
                    dismiss()
                }) {
                                Text(LocalizedStringKey("Slovak"))
                                    .font(.system(size: 25))
                                    .foregroundColor(.text)
                }
                .frame(maxWidth: 310, minHeight: 40 , maxHeight: 60)
                        .background(Color.background)
            }
                .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    LanguageSelectionView()
}


