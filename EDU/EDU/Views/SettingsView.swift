import SwiftUI
import FirebaseAuth

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @State private var isLoggedOut = false
    @State private var errorMessage: String = ""
    @State private var isDarkMode = false
    @State private var showLanguageSelection = false

    
    var body: some View {
        VStack (spacing: 40){
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, minHeight: 40 , maxHeight: 58)
                    .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                    .overlay(
                        Rectangle()
                            .stroke(Color.button)
                    )
                    .padding(.horizontal)
                
                Button(action: {
                    showLanguageSelection = true
                }) {
                    HStack {
                        Text(LocalizedStringKey("Language"))
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.text)
                            .padding(.leading, 15.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "a.book.closed.fill")
                            .font(.system(size: 30))
                            .foregroundColor(.text)
                            .frame(width: 50, alignment: .leading)
                            .padding(.trailing, 15.0)
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 , maxHeight: 58)
                    .background(Color.background)
                }
                .padding(.horizontal)
                .fullScreenCover(isPresented: $showLanguageSelection) {
                    LanguageSelectionView()
                }
            }
            
            
            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, minHeight: 40 , maxHeight: 58)
                    .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                    .overlay(
                        Rectangle()
                            .stroke(Color.button)
                    )
                    .padding(.horizontal)
                
                Button(action: {
                    toggleTheme()
                }) {
                    HStack {
                        
                        Text(LocalizedStringKey(isDarkMode ? "Light Theme" : "Dark Theme"))
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.text)
                            .padding(.leading, 15.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: isDarkMode ? "sun.max.fill" : "moon.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.text)
                            .frame(width: 50, alignment: .leading)
                            .padding(.trailing, 15.0)
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 , maxHeight: 58)
                    .background(Color.background)
                }
                .padding(.horizontal)
            }

            ZStack {
                Rectangle()
                    .frame(maxWidth: .infinity, minHeight: 40 , maxHeight: 58)
                    .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                    .overlay(
                        Rectangle()
                            .stroke(Color.button)
                    )
                    .padding(.horizontal)
                
                Button(action: {
                    logout()
                }) {
                    HStack{
                        
                        Text(LocalizedStringKey("Log Out"))
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.text)
                            .padding(.leading, 15.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "person.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.text)
                            .frame(width: 50, alignment: .leading)
                            .padding(.trailing, 15.0)
                        
                    }
                    .frame(maxWidth: .infinity, minHeight: 40 , maxHeight: 58)
                    .background(Color.background)
                }
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding()
        .fullScreenCover(isPresented: $isLoggedOut) {
            LoginView()
        }
        .onAppear {
            isDarkMode = (UITraitCollection.current.userInterfaceStyle == .dark)
        }
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
            isLoggedOut = true
        } catch let error {
            errorMessage = error.localizedDescription
        }
    }
    
    
    func toggleTheme() {
        isDarkMode.toggle()
        
        if isDarkMode {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .dark
        } else {
            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .light
        }
    }
}


struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    @State private var isLoggedIn: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 70) {
            
            HeadingView(title: "Before we start" , subttile: "You need to write in fields belows your school email and password from your school Edupage")
                
            
            
            FormView(
                email: $email,
                password: $password,
                emailPlaceholder: "Email",
                passwordPlaceholder: "Password"
            )
            .padding(.vertical, 70)
            
            
            
            VStack(spacing: 20) {
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 60)
                        .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                        .overlay(
                            Rectangle()
                                .stroke(Color.button)
                        )
                    
                    Button(action: {
                        login()
                    }) {
                        Text("Log In")
                            .frame(width: 200, height: 60)
                            .foregroundStyle(Color.text)
                            .background(Color.background)
                            .font(.system(size: 20))
                            .bold()
                    }
                }
                .padding(.top, 40.0)
                Spacer()
                
                if !errorMessage.isEmpty {
                    Text(errorMessage)
                        .foregroundColor(.accentColor)
                        .font(.footnote)
                        .padding(5)
                        .frame(maxWidth: .infinity, alignment: .center)
                        
                }
            }
            

            
            
        }
        .padding()
        .fullScreenCover(isPresented: $isLoggedIn) {
            CourseView()
        }
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error as NSError? {
                print("Error code: \(error.code), description: \(error.localizedDescription)")
                errorMessage = mapAuthError(errorCode: error.code)
            } else {
                isLoggedIn = true
            }
        }
    }
    
    func mapAuthError(errorCode: Int) -> String {
        switch errorCode {
        case AuthErrorCode.networkError.rawValue:
            return NSLocalizedString("Network error. Please check your connection.", comment: "Network error")
        case AuthErrorCode.userNotFound.rawValue:
            return NSLocalizedString("User not found. Please check your email.", comment: "User not found error")
        case AuthErrorCode.wrongPassword.rawValue:
            return NSLocalizedString("Incorrect password. Please try again.", comment: "Wrong password error")
        case AuthErrorCode.invalidEmail.rawValue:
            return NSLocalizedString("Invalid email format. Please check your email.", comment: "Invalid email error")
        case AuthErrorCode.userDisabled.rawValue:
            return NSLocalizedString("This account has been disabled. Please contact support.", comment: "Account disabled error")
        case AuthErrorCode.tooManyRequests.rawValue:
            return NSLocalizedString("Too many login attempts. Please try again later.", comment: "Too many requests error")
        case AuthErrorCode.emailAlreadyInUse.rawValue:
            return NSLocalizedString("The email is already in use by another account.", comment: "Email already in use error")
        default:
            print("Unmapped error code: \(errorCode)")
            return NSLocalizedString("Please check your input information and try again.", comment: "Default error")
        }
    }
}

#Preview {
    SettingsView()
}
