import SwiftUI

enum ActiveScreen {
    case screen1
    case screen2
    case screen3
}

struct VideoScreen: View {
    @State private var activeScreen: ActiveScreen = .screen1
    @State private var screenName: String = " جيل جديد"

    var body: some View {
        VStack {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.white)
                shape.stroke(Color.gray, lineWidth: 1)

                Menu  {
                   
                    Button {
                        activeScreen = .screen1
                        screenName = "جيل جديد"
                    } label: {
                        Label("جيل جديد", systemImage: "")
                    }

                    Button {
                        activeScreen = .screen2
                        screenName = "صفحة جديدة"
                    } label: {
                        Label("صفحة جديدة", systemImage: "")
                    }

                    Button {
                        activeScreen = .screen3
                        screenName = "الكارز"
                    } label: {
                        Label("الكارز", systemImage: "")
                    }

                    Button {
                        activeScreen = .screen3
                        screenName = "كاشف الأسرار"
                    } label: {
                        Label("كاشف الأسرار", systemImage: "")
                    }

                    Button {
                        activeScreen = .screen3
                        screenName = "حياتك فس قصة"
                    } label: {
                        Label("حياتك فس قصة", systemImage: "")
                    }

                    Button {
                        activeScreen = .screen3
                        screenName = "      "
                    } label: {
                        Label("     ", systemImage: "")
                    }
                } label: {
                    Text(screenName)
                }
                .frame(height: 40)
                .cornerRadius(20)
                .padding(.horizontal , 40)
            }
            .frame(height: 45)
            .padding(.top, 10)
            .padding(.horizontal , 80)

            VStack {
                switch activeScreen {
                case .screen1:
                    Screen1View()
                case .screen2:
                    Screen2View()
                case .screen3:
                    Screen3View()
                }
            }
        }
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
ThirdProgramm()    }
}


struct VideoScreen_Previews: PreviewProvider {
    static var previews: some View {
        VideoScreen()
    }
}


