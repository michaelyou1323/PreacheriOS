//
//  PreachingScreen.swift
//  Preacher
//
//  Created by Michaelyoussef on 19/08/2023.
//

import SwiftUI

struct PreachingScreen: View {
    var body: some View {
        
        
        
        VStack{
            
            ZStack {
                
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 1)
                    .frame( height: 60).padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("دعوة للحياة").font(.system(size:27 ))
                    .bold()
                
            }  .frame( height: 60).padding(.horizontal, 80)
                .padding(.vertical, 5)
            
            
            
            Spacer()
            
        }
    }
}

struct PreachingScreen_Previews: PreviewProvider {
    static var previews: some View {
        PreachingScreen()
    }
}
