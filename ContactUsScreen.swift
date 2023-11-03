import SwiftUI

struct ContactUsScreen: View {
    var body: some View {
        VStack {
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.gray.opacity(0.01))
                shape.strokeBorder(lineWidth: 1)
                    .frame(height: 60)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("تواصل معنا")
                    .font(.system(size: 27))
                    .bold()
            }
            .frame(height: 60)
            .padding(.horizontal, 80)
            .padding(.vertical, 5)
            .padding(.bottom,40)
            .padding(.top,10)
            
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.gray.opacity(0.01))
                shape.strokeBorder(lineWidth: 1)
                    .frame(height: 70)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                HStack {
                    Text(" صفحتنا على الفيس يوك")
                        .font(.system(size: 22))
                        .bold()
                        .multilineTextAlignment(.trailing)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                   
                        Image("Pngtree—facebook icon") // Replace with your Facebook icon image name
                            .resizable()
                            .frame(width: 40, height: 40)
                    
                }
                .padding(.horizontal, 40)
                .frame(alignment: .trailing)
 
            }
            .onTapGesture() {
                
                UIApplication.shared.open(URL(string: "https://www.facebook.com/your-facebook-page-url-here")!)
               
            }
            .frame(height: 170)
            .padding(.horizontal, 15)
            .padding(.vertical, 5)
            
            
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.gray.opacity(0.01))
                shape.strokeBorder(lineWidth: 1)
                    .frame(height: 70)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                HStack {
                    Text(" صفحتنا على اليوتيوب")
                        .font(.system(size: 22))
                        .bold()
                        .multilineTextAlignment(.trailing)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                 
                  
                        Image("kisspng-computer-icons-youtube-icon-round-logo-design-5af2b97c5d2e69.6146148015258566363817") // Replace with your Facebook icon image name
                            .resizable()
                            .frame(width: 40, height: 40)

                    
                }
                .padding(.horizontal, 40)
                .frame(alignment: .trailing)
                
                
                
                
            }
            .frame(height: 6)
            .padding(.horizontal, 15)
            .padding(.vertical, 5)
            .onTapGesture() {
                
                UIApplication.shared.open(URL(string: "https://youtube.com/playlist?list=PLdXuqsWd7l2a0KuEkhkw3e_bQ4gqQl3rS&si=Dzi8hAdQpVU9CSiu")!)
               
            }
            
            
            Spacer()
        }
        .background(Color.gray.opacity(0.3))
    }
}

struct ContactUsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsScreen()
    }
}
