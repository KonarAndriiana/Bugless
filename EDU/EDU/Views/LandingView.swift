import SwiftUI

struct LandingView: View {
    @Binding var isLoggedIn: Bool
    
    @State private var navigateToLogin = false
    @State private var emojiRain: [RainEmoji] = []
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.background
                    .ignoresSafeArea()
                
                VStack(spacing: 70) {
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding(.top, 30)
                        .onTapGesture {
                            createEmojiRain()
                        }
                    
                    VStack(spacing: 10) {
                        Text("Find Your")
                            .font(.system(size: 35))
                            .bold()
                            .foregroundColor(Color.text)
                        
                        Text("Favorite Courses")
                            .font(.system(size: 35))
                            .bold()
                            .foregroundColor(Color.text)
                    }
                    .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 250, height: 60)
                            .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                            .overlay(
                                Rectangle()
                                    .stroke(Color.button)
                            )
                        
                        ButtonView(name: "Get Started") {
                            navigateToLogin = true
                        }
                        .frame(width: 250, height: 60)
                        .foregroundStyle(Color.text)
                        .background(Color.background)
                        .font(.system(size: 20))
                        .bold()
                    }
                    
                    Spacer()
                }
                .padding()
                
                // Overlay for emoji rain
                ZStack {
                    ForEach(emojiRain) { emoji in
                        Text(emoji.symbol)
                            .font(.system(size: emoji.size))
                            .position(x: emoji.position.x, y: emoji.position.y)
                            .animation(Animation.linear(duration: emoji.duration).repeatCount(1, autoreverses: false), value: emoji.position)
                    }
                }
                .ignoresSafeArea()
            }
            .navigationDestination(isPresented: $navigateToLogin) {
                LoginView()
            }
        }
    }
    
    private func createEmojiRain() {
        for _ in 1...80 {
            let emoji = RainEmoji(
                id: UUID(),
                symbol: ["👩🏻‍💻" , "👨🏼‍💻"].randomElement()!,
                size: CGFloat.random(in: 30...60),
                position: CGPoint(x: CGFloat.random(in: 0...UIScreen.main.bounds.width), y: 0),
                duration: Double.random(in: 3...6)
            )
            
            emojiRain.append(emoji)
            
            // Animate each emoji falling
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                if let index = emojiRain.firstIndex(where: { $0.id == emoji.id }) {
                    emojiRain[index].position.y = UIScreen.main.bounds.height + 50
                }
            }
        }
    }
}

// Helper struct for emoji rain
struct RainEmoji: Identifiable {
    let id: UUID
    let symbol: String
    var size: CGFloat
    var position: CGPoint
    var duration: Double
}

// Preview
#Preview {
    LandingView(isLoggedIn: .constant(false))
}
