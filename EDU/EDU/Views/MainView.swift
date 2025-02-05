
import SwiftUI
import FirebaseAuth
import FirebaseCore

struct MainView: View {
    @State private var isLoggedIn: Bool = false
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some View {
        Group {
            if isLoggedIn {
                CourseView()
            } else {
                LandingView(isLoggedIn: $isLoggedIn)
            }
        }
        .onAppear {
            checkAuthentication()
        }
    }
    
    func checkAuthentication() {
        if Auth.auth().currentUser != nil {
            isLoggedIn = true
        } else {
            isLoggedIn = false
        }
    }
}
