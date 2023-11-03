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
                shape.fill().foregroundColor(.gray.opacity(0.01))
                
                shape.strokeBorder(lineWidth: 1)
                    .frame( height: 60).padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("عن الخدمة ").font(.system(size:27 ))
                    .bold()
                
            }  .frame( height: 60).padding(.horizontal, 80)
                .padding(.vertical, 5)
         
            
            ZStack {
                
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.gray.opacity(0.01))
                
                shape.strokeBorder(lineWidth: 1)
                    .frame( height: 190).padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("ــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــ ").font(.system(size:27 ))
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 40)
                        .padding(.vertical, 5)
                
            }  .frame( height: 500).padding(.horizontal, 40)
                .padding(.vertical, 5)
         
            
            
            Spacer()
            
        }.background(.gray.opacity(0.3))
        
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
