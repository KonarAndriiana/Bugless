import SwiftUI

struct FormView: View {
    @Binding var email: String
    @Binding var password: String

    let emailPlaceholder: LocalizedStringKey
    let passwordPlaceholder: LocalizedStringKey

    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            ZStack {
                Rectangle()
                    .fill(Color.background)
                    .frame(width: 300, height: 60)
                    .overlay(
                        Rectangle()
                            .foregroundColor(Color.background)
                            .shadow(color: Color.button, radius: 0, x: 0, y: 2)
                    )

                TextField(emailPlaceholder, text: $email)
                    .frame(width: 280, height: 40)
                    .foregroundColor(Color.text)
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
            }

            ZStack {
                Rectangle()
                    .fill(Color.background)
                    .frame(width: 300, height: 60)
                    .overlay(
                        Rectangle()
                            .foregroundColor(Color.background)
                            .shadow(color: Color.button, radius: 0, x: 0, y: 2)
                    )
                
                SecureField(passwordPlaceholder, text: $password)
                    .background(
                        Color.clear
                            .contentShape(Rectangle())
                            .onTapGesture {
                            }
                    )
                    .frame(width: 280, height: 40)
                    .foregroundColor(Color.text)
                    .multilineTextAlignment(.center)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
            }
        }
    }
}

#Preview {
    LoginView()
}
