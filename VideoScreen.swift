import SwiftUI

enum ActiveScreen {
    case screen1
    case screen2
    case screen3
    case screen4
    case screen5
}

struct ArrowShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
            path.closeSubpath()
        }
    }
}

struct VideoScreen: View {
    @State private var activeScreen: ActiveScreen = .screen1
    @State private var screenName: String = " جيل جديد"
    @State private var isMenuOpen: Bool = false

    var body: some View {
        VStack {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(Color.gray.opacity(0.01))
                shape.stroke(Color.gray, lineWidth: 1)
                .overlay(ArrowShape()
                    .frame(width: 11, height: 11)
                    .foregroundColor(.gray)
                    .rotationEffect(isMenuOpen ? .degrees(180) : .degrees(0))
                    .offset(  x: -95, y: 2)
                   
                )
                    Menu {
                                       Button {
                                           activeScreen = .screen1
                                           screenName = "جيل جديد"
                                           isMenuOpen.toggle()
                                       } label: {
                                           Label("جيل جديد", systemImage: "")
                                       }

                                       Button {
                                           activeScreen = .screen2
                                           screenName = "صفحة جديدة"
                                           isMenuOpen.toggle()
                                       } label: {
                                           Label("صفحة جديدة", systemImage: "")
                                       }

                                       Button {
                                           activeScreen = .screen3
                                           screenName = "الكارز"
                                           isMenuOpen.toggle()
                                       } label: {
                                           Label("الكارز", systemImage: "")
                                       }

                                       Button {
                                           activeScreen = .screen4
                                           screenName = "كاشف الأسرار"
                                           isMenuOpen.toggle()
                                       } label: {
                                           Label("كاشف الأسرار", systemImage: "")
                                       }

                                       Button {
                                           activeScreen = .screen5
                                           screenName = "حياتك في قصة"
                                           isMenuOpen.toggle()
                                       } label: {
                                           Label("حياتك في قصة", systemImage: "")
                                       }

//                                       Button {
//                                           activeScreen = .screen3
//                                           screenName = "      "
//                                           isMenuOpen.toggle()
//                                       } label: {
//                                           Label("     ", systemImage: "")
//                                       }
                                   } label: {
                                       Text(screenName)
                                   }.onTapGesture(perform: {
                                       isMenuOpen.toggle()
                                   })
                                   .frame(height: 40)
                                   .cornerRadius(20)
                                   .padding(.horizontal , 30)
               
            }
            .frame(height: 45)
            .padding(.top, 10)
            .padding(.horizontal, 80)

//            if isMenuOpen {
//                isMenuOpen.toggle()
//            }

            VStack {
                switch activeScreen {
                case .screen1:
                    Screen1View()
                case .screen2:
                    Screen2View()
                case .screen3:
                    Screen3View()
                case .screen4:
                    Screen4View()
                case .screen5:
                    Screen5View()
                }
            }
        }.background(Color.gray.opacity(0.3))
    }
}

// Rest of the code remains the same

struct Screen1View: View {
    var body: some View {
        FirstProgramm()
    }
}

struct Screen2View: View {
    var body: some View {
        SecondProgramm()
    }
}

struct Screen3View: View {
    var body: some View {
        ThirdProgramm()
    }
}
struct Screen4View: View {
    var body: some View {
        FourthProgram()
    }
}
struct Screen5View: View {
    var body: some View {
        FifthProgram()
    }
}
struct VideoScreen_Previews: PreviewProvider {
    static var previews: some View {
        VideoScreen()
    }
}
