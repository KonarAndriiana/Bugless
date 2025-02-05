import SwiftUI

struct CourseView: View {
    @State private var navigateToSettings = false
    @State private var rectangleText = LocalizedStringKey("welcomeText")
    @State private var selectedCourse: String? = nil
    @State private var selectedLecture: Lecture? = nil
    @State private var emojiRain: [RainEmoji] = []

    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 15) {
                    Rectangle()
                        .fill(Color.background)
                        .frame(height: 180)
                        .overlay(
                            ScrollView {
                                Text(rectangleText)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color.text)
                                    .padding()
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, 10)
                            }
                        )
                        .padding([.top, .leading, .trailing], 20.0)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 10) {
                            createButton(
                                title: "Java",
                                actionText: "javaActionText",
                                courseName: "Java"
                            )
                            createButton(
                                title: "HTML",
                                actionText: "htmlActionText",
                                courseName: "HTML"
                            )
                            createButton(
                                title: "CSS",
                                actionText: "cssActionText",
                                courseName: "CSS"
                            )
                            createButton(
                                title: "Python",
                                actionText: "pythonActionText",
                                courseName: "Python"
                            )
                            createButton(
                                title: "SQL",
                                actionText: "sqlActionText",
                                courseName: "SQL"
                            )
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, 10.0)

                    if let selectedCourse = selectedCourse {
                        ScrollView {
                            VStack(spacing: 20) {
                                ForEach(lectures(for: selectedCourse), id: \.title) { lecture in
                                    NavigationLink(destination: LectureDetailView(lecture: lecture, selectedCourse: selectedCourse)) {
                                        ZStack {
                                            Rectangle()
                                                .fill(Color.background)
                                                .frame(maxWidth: .infinity, maxHeight: 80)
                                                .shadow(color: shadowColor(for: selectedCourse), radius: 0, x: -3, y: 0)
                                            Text(lecture.title)
                                                .padding()
                                                .frame(maxWidth: .infinity, maxHeight: 80)
                                                .background(Color.background)
                                                .foregroundColor(Color.text)
                                                .font(.system(size: 20))
                                        }
                                    }
                                    .padding(.horizontal)
                                }


                                if selectedCourse == "SQL" {
                                    Button(action: {
                                        createEmojiRain()
                                    }) {
                                        Text("👀")
                                            .font(.system(size: 25))
                                            .foregroundColor(.blue)
                                    }
                                    .padding()
                                }
                            }
                            .padding(.vertical, 10.0)
                        }
                    }

                    Spacer()
                }
                .edgesIgnoringSafeArea(.bottom)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        HStack {
                            Text(LocalizedStringKey("Courses"))
                                .font(.system(size: 45))
                                .foregroundColor(Color.text)
                                .multilineTextAlignment(.leading)

                            if let selectedCourse = selectedCourse {
                                Text(emojiForCourse(selectedCourse))
                                    .font(.system(size: 43))
                            }
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            navigateToSettings = true
                        }) {
                            Image(systemName: "gear")
                                .font(.system(size: 30))
                                .foregroundColor(Color.text)
                        }
                    }
                }
                .navigationDestination(isPresented: $navigateToSettings) {
                    SettingsView()
                }


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
            .background(Color.background)
        }
    }

    private func createButton(title: String, actionText: String, courseName: String) -> some View {
        ZStack {
            Rectangle()
                .frame(width: 80, height: 50)
                .shadow(color: Color.button, radius: 0, x: 5, y: 5)
                .overlay(
                    Rectangle()
                        .stroke(Color.button)
                )

            Button(action: {
                selectedCourse = courseName
                rectangleText = LocalizedStringKey(actionText)
            }) {
                Text(LocalizedStringKey(title))
                    .frame(width: 80, height: 50)
                    .foregroundStyle(Color.text)
                    .background(Color.background)
                    .font(.system(size: 23))
                    .bold()
            }
        }
        .padding()
    }

    private func shadowColor(for course: String) -> Color {
        switch course {
        case "Java":
            return .brown
        case "HTML":
            return .accentColor
        case "CSS":
            return .orange
        case "Python":
            return .green
        case "SQL":
            return .red
        default:
            return .gray
        }
    }

    private func lectures(for course: String) -> [Lecture] {
        switch course {
        case "Java":
            return CourseData.javaLectures
        case "HTML":
            return CourseData.htmlLectures
        case "CSS":
            return CourseData.cssLectures
        case "Python":
            return CourseData.pythonLectures
        case "SQL":
            return CourseData.sqlLectures
        default:
            return []
        }
    }

    private func emojiForCourse(_ course: String) -> String {
        switch course {
        case "Java":
            return "☕️"
        case "HTML":
            return "📄"
        case "CSS":
            return "🎨"
        case "Python":
            return "🐍"
        case "SQL":
            return "🛢️"
        default:
            return ""
        }
    }

    private func createEmojiRain() {
        for _ in 1...80 {
            let emoji = RainEmoji(
                id: UUID(),
                symbol: ["👩🏻‍💻", "👨🏼‍💻"].randomElement()!,
                size: CGFloat.random(in: 30...60),
                position: CGPoint(x: CGFloat.random(in: 0...UIScreen.main.bounds.width), y: 0),
                duration: Double.random(in: 3...6)
            )

            emojiRain.append(emoji)


            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                if let index = emojiRain.firstIndex(where: { $0.id == emoji.id }) {
                    emojiRain[index].position.y = UIScreen.main.bounds.height + 50
                }
            }
        }
    }
}

#Preview{
    CourseView()
}
