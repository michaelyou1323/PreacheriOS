//
//  AboutView.swift
//  Preacher
//
//  Created by Michaelyoussef on 18/08/2023.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            
            ZStack {
                
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 1)
                    .frame( height: 60).padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("عن الخدمة").font(.system(size:27 ))
                    .bold()
                
            }  .frame( height: 60).padding(.horizontal, 80)
                .padding(.vertical, 5)
            
            
            
            Spacer()
            
        }
        
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
