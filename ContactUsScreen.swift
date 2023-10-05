//
//  ContactUsScreen.swift
//  Preacher
//
//  Created by Michaelyoussef on 19/08/2023.
//

import SwiftUI

struct ContactUsScreen: View {
    var body: some View {
        VStack{
            
            ZStack {
                
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 1)
                    .frame( height: 60).padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("تواصل معنا").font(.system(size:27 ))
                    .bold()
                
            }  .frame( height: 60).padding(.horizontal, 80)
                .padding(.vertical, 5)
            
            

            Spacer()
            
        }
        
        

        
    }
}

struct ContactUsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContactUsScreen()
    }
}
