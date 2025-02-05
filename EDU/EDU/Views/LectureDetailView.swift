import SwiftUI

struct LectureDetailView: View {
    let lecture: Lecture
    let selectedCourse: String
    
    private var courseColor: Color {
        switch selectedCourse {
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
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    
                    if let topics = lecture.topics, !topics.isEmpty {
                        Text("Topics Covered")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(courseColor)
                        
                        ForEach(topics, id: \.self) { topic in
                            Text(topic)
                                .font(.body)
                        }
                    }
                    
                    if lecture.content != nil {
                        Text("Content")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(courseColor)
                        
                        Text(lecture.content)
                            .font(.body)
                            .padding(.bottom, 10)
                    }

                    if let exampleCode = lecture.exampleCode {
                        Image(systemName: "apple.terminal.on.rectangle.fill")
                            .font(.system(size: 30))
                            .foregroundColor(courseColor)
                            .frame(width: 50, alignment: .leading)
                        
                        ZStack {
                            Rectangle()
                                .frame(maxWidth: .infinity, minHeight: 100)
                                .shadow(color: courseColor, radius: 0, x: -5, y: 0)
                            
                            Text(exampleCode)
                                .frame(maxWidth: .infinity, minHeight: 100)
                                .font(.body)
                                .padding(.vertical, 10)
                                .foregroundColor(Color.text)
                                .background(Color.background)
                        }
                    }
                }
                .padding()
            }
            
            Spacer()
        }
        .navigationTitle(lecture.title)
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    LectureDetailView(
        lecture: CourseData.javaLectures[0],
        selectedCourse: "Java"
    )
}
