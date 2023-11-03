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
                shape.fill().foregroundColor(.gray.opacity(0.01))
                
                shape.strokeBorder(lineWidth: 1)
                    .frame( height: 60).padding(.horizontal, 20)
                    .padding(.vertical, 15)
                
                Text("دعوة للحياة").font(.system(size:27 ))
                    .bold()
                
            }  .frame( height: 60).padding(.horizontal, 80)
                .padding(.top, 30)
         
            
            ZStack {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.gray.opacity(0.01))
                
                shape.strokeBorder(lineWidth: 1)
                    .frame(height: 500)
                    .padding(.horizontal, 1)
                    .padding(.top, 1)
                
                VStack(alignment: .center) {
                    Text("ما يُنشئهُ الإِيمَانُ")
                        .font(.system(size: 30))
                        .bold()
                        .multilineTextAlignment(.center) // Center alignment
                        .padding(.horizontal, 40)
                        
                        .foregroundStyle(.red)
                    
                    
                    HStack {
                        Spacer() // Spacer to push the next Text to the right
                        Text("وَأَمَّا الإِيمَانُ فَهُوَ الثِّقَةُ بِمَا يُرْجَى وَالإِيقَانُ بِأُمُورٍ لاَ تُرَى ( عبرانيين 11: 1 )")
                            .font(.system(size: 22))
                            .bold()
                            .multilineTextAlignment(.trailing)
                           
                            .padding(.vertical, 10)
                            .padding(.trailing, 10)

                            .foregroundStyle(.blue)
                    }
                    
                    HStack {
                        Spacer() // Spacer to push the next Text to the right
                        Text("في أصحاح الإيمان الشهير في الرسالة إلى العبرانيين، أوضح الرسول مجالين لعمل الإيمان: الأول هو الثِّقَةُ بِمَا يُرْجَى، والثاني هو الإِيقَانُ بِأُمُورٍ لاَ تُرَى ( عب 11: 1 ). هذا معناه أن الإيمان يعمل في دائرتين: غير الحادث، أو المستقبل، وغير المنظور، أو الروحي. الإيمان يُمكِّن الشخص المؤمن من أن يرى المستقبل كما يرى الحاضر، والذي لا يُرى كأنه يُرى. بعبارة أخرى، إن الإيمان هو تليسكوب يقرِّب البعيد، وهو أشعة إكس يكشف بواطن الأمور.")
                            .font(.system(size: 20))
                            .bold()
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, 10)
                            
                            .foregroundStyle(.black)
                            .padding(.bottom, 30)
                    }
                }
            }
            .frame(height: 500)
            .padding(.horizontal, 25)
            .padding(.vertical, 99)
            
         
            
            
            Spacer()
            
        } .background(.gray.opacity(0.3))
        
    }
}

struct PreachingScreen_Previews: PreviewProvider {
    static var previews: some View {
        PreachingScreen()
    }
}
