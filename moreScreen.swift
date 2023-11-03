import SwiftUI

struct moreScreen: View {
    
    var body: some View {
        VStack {
            Spacer()
            
            NavigationLink(destination: AboutView()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.gray.opacity(0.01))
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("عن الخدمة").font(.system(size: 27)).bold()
                }
                .frame(width: 500, height: 70)
                .padding(5)
            }
            
            NavigationLink(destination: EventsScreen()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.gray.opacity(0.01))
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("لقاءات").font(.system(size: 27)).bold()
                }
                .frame(width: 500, height: 70)
                .padding(5)
            }
            
            NavigationLink(destination: PreachingScreen()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.gray.opacity(0.01))
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("دعوة للحياة").font(.system(size: 27)).bold()
                }
                .frame(width: 500, height: 70)
                .padding(5)
            }
            
            NavigationLink(destination: ContactUsScreen()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.gray.opacity(0.01))
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("تواصل معنا").font(.system(size: 27)).bold()
                }
                .frame(width: 500, height: 70)
                .padding(5)
            }
            Spacer()
        }
        .frame(alignment: .center)
        .background(Color.gray.opacity(0.3))
    }
}

struct moreScreen_Previews: PreviewProvider {
    static var previews: some View {
        moreScreen()
    }
}
