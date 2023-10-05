//
//  ContentView.swift
//  Preacher
//
//  Created by Michaelyoussef on 05/08/2023.
//

import SwiftUI
import FirebaseCore

struct SplashView: View {
    
    // 1.
    @State var isActive:Bool = false
    
    var body: some View {
        VStack {
      
            if self.isActive {
                // 3.
              ContentView()
            } else {
                VStack{
                    
                    
                    ZStack{
                        
                        let shape = RoundedRectangle(cornerRadius: 30)
                        shape.fill().foregroundColor( Color(red: 20 / 255, green: 108 / 255, blue: 215 / 255))
                        //                    0.91    0.50    0.00   0.16
                        shape.stroke(Color.white,lineWidth: 6)
                        
                            .contentShape( Rectangle())
                            .frame( height: 250)
                            .padding(.horizontal,55)
                            .padding(.top, 120)
                        
                        Image("img_20230526_130845")
                            .resizable().aspectRatio(contentMode: .fit)
                            .edgesIgnoringSafeArea(.all)
                            .frame( height: 210 )
                            .padding(.horizontal,35)
                            .padding(.top, 115)
                        
                    }
                    
                    Text("وَقَالَ لَهُمُ:")
                        .font(.system(size: 30)).multilineTextAlignment(.center).foregroundColor(.white).bold()
                        .padding(.bottom,3)
                    Text("«اذْهَبُوا إِلَى الْعَالَمِ أَجْمَعَ وَاكْرِزُوا بِالإِنْجِيلِ لِلْخَلِيقَةِ كُلِّهَا.»").bold()
                        .font(.system(size: 25)).multilineTextAlignment(.center).foregroundColor(.white)
                    
                    //                        .frame(height: 60)
                        .padding(.horizontal,40)
                    Text("(مرقس ١٦: ١٥)").bold()
                        .font(.system(size: 25)).multilineTextAlignment(.center).foregroundColor(.white)
                        .padding(.bottom,120)
                    
                        .padding(.horizontal,60)
                    
                }
                
                
            }
//            }
//            20,108,215
        }.background(Color(red: 20 / 255, green: 108 / 255, blue: 215 / 255))
        // 5.
        .onAppear {
            // 6.
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                // 7. 
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
         
}

struct ContentView: View {
    @State private var selection = 1
    @State var firstname: String = ""
    
//        init() {
//            UITabBar.appearance().barTintColor = UIColor.blue
//        }
    
    var body: some View {
        
        NavigationView {
           
        VStack {
            Text("الكارز").font(.system(size: 45))
                .bold()
                .padding(2)
            
            
            TabView {
                
                
                Group{
                    
                    MainScreen()
                        .tabItem {
                            Image(systemName: "house.fill")
                            
                            Text("الرئيسية")
                        }
                    //   .toolbar(.visible, for: .tabBar)
                    //   .toolbarBackground(Color.yellow, for: .tabBar)
                    
                    VideoScreen()
                        .tabItem {
                            Image(systemName: "video.fill")
                            Text("الحلقات")
                        }
                    
                    
                    moreScreen()
                        .tabItem {
                            Image(systemName: "ellipsis.rectangle")
                            Text("المزيد")
                        }
                    
                }
                .toolbarBackground(.indigo, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.blue, for: .tabBar)
                .toolbarColorScheme(.dark, for: .tabBar)
                
                
            }
        }
        // .foregroundColor(Color.red)
        
            NavigationLink(destination: FormScreen()) {
                   
            }
            
            
    }
        }
       
     

        

        
    }


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
