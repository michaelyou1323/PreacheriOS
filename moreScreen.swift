//
//  moreScreen.swift
//  Preacher
//
//  Created by Michaelyoussef on 08/08/2023.
//

import SwiftUI

struct moreScreen: View {
 
        
    
    var body: some View {
        
        VStack {
            
            NavigationLink(destination: AboutView()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("عن الخدمة").font(.system(size:27 ))
                        .bold()
                    
                } .frame(width: 500, height: 70)
                    .padding(5)
            }
            NavigationLink(destination: EventsScreen()) {
               
                ZStack {
                    
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("لقاءات").font(.system(size:27 ))
                        .bold()
                    
                } .frame(width: 500, height: 70)
                    .padding(5)
                
            }
            
            
            NavigationLink(destination: PreachingScreen()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("دعوة للحياة").font(.system(size:27 ))
                        .bold()
                    
                } .frame(width: 500, height: 70)
                    .padding(5)
            }
            
            
            NavigationLink(destination: ContactUsScreen()) {
                ZStack {
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 1)
                        .frame(width: 300, height: 70)
                    
                    Text("تواصل معنا").font(.system(size:27 ))
                        .bold()
                    
                } .frame(width: 500, height: 70)
                    .padding(5)
            }
        }
        
        
      

    }
    
    struct moreScreen_Previews: PreviewProvider {
        static var previews: some View {
            moreScreen()
        }
    }
}
