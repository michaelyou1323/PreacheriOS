//
//  EventsScreen.swift
//  Preacher
//
//  Created by Michaelyoussef on 19/08/2023.
//
import Foundation
import SwiftUI

struct EventsScreen: View {
   
@StateObject
    var viewModel = ProgramAndEventsModel()
    var eventList: [String] = []
    let columns = [
           GridItem(.flexible())
         

       ]

    var body: some View {
        NavigationView{
       
            VStack {
                
                ZStack {
                    
                    let shape = RoundedRectangle(cornerRadius: 20)
                    shape.fill().foregroundColor(.white)
                    shape.strokeBorder(lineWidth: 1)
                        .frame( height: 60).padding(.horizontal, 20)
                        .onAppear(perform: viewModel.observelistOfEventes).padding(.vertical, 15)
                    
                    Text("لقاءات").font(.system(size:27 ))
                        .bold()
                    
                }  .frame( height: 60).padding(.horizontal, 80)
                

                ScrollView {
                    VStack (
                        alignment:.leading,spacing: 10
                    ){
//                        Text("").frame(height:0)
                    }.padding(1)
                    
                    if !viewModel.listOfEventObjects.isEmpty {
                        
                        VStack{
                            LazyVGrid(columns: columns,spacing: 30) {
                                ForEach(viewModel.listOfEventObjects) {
                                    
                                    object
                                    in
                                    
                                    ZStack {
                                      
                                        let shape = RoundedRectangle(cornerRadius: 20)
                                        shape.fill().foregroundColor(.white)
                                        shape.stroke(Color.accentColor,lineWidth: 1)
                                            .contentShape( Rectangle() )
                                            .onTapGesture() {
                                                if object.link != "" {
                                                    UIApplication.shared.open(URL(string:object.link)!)
                                                }else{
                                                  
                                                }
                                                
                                            }
                                        
                                        VStack {
                                            ZStack{
                                                
                                                let shape = RoundedRectangle(cornerRadius: 20)
                                                shape.fill().foregroundColor(.white)
                                                
                                              
                                               
                                                    
                                                //                                                   AsyncImage(url: URL(string: object.image))
                                                //                                                       .frame(width: 40, height: 40)
                                                if object.imageUrl != "" {
                                                    
                                                    AsyncImage(url: URL(string: object.imageUrl)) { image in
                                                        image.resizable()
                                                            .cornerRadius(20)
                                                    } placeholder: {
                                                        ProgressView()
                                                    }
                                                    .frame( height: 130)
                                                    
                                                    
                                                } else{
                                                    AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/preacher-41c11.appspot.com/o/Invitation%2Fno-image-icon-23485.png?alt=media&token=179c087d-3342-4536-9b30-1a80cd3f541c")) { image in
                                                        image.resizable()
                                                            .cornerRadius(20)
                                                    } placeholder: {
                                                        ProgressView()
                                                    }
                                                    .frame( height: 130)
                                                    
                                                }
                                                
                                                
                                            }
                                            .onTapGesture() {
                                                if object.link != "" {
                                                    UIApplication.shared.open(URL(string:object.link)!)
                                                }else{
                                                  
                                                }
                                                
                                            }
                                            
                                            
                                            
                                            ZStack{
                                                if object.title != "" {
                                                    
                                                    Text(object.title ).font(.system(size: 23)).foregroundStyle(.blue)
                                                }
                                                else{
                                                    Text("   ").font(.system(size: 23))
                                                }
                                            }.padding(.bottom, 5)
                                            
                                            
                                            ZStack{
                                                if object.description != "" {
                                                    
                                                    Text(object.description).font(.system(size: 15)).multilineTextAlignment(.center)
                                                    
                                                }
                                                else{
                                                    Text("    ").font(.system(size: 17))
                                                }
                                            }.padding(.bottom, 15)
                                            
                                            
                                        }
                                        .padding(.horizontal, 25)
                                        .padding(.top,5)
                                        
                                        
                                    }
                                    .frame( height: 230).padding(.horizontal, 25)
                                    
                                    
                                }
                                
                            }
                            
                        }
                    }
                }.padding()
                           

            }

        }.padding(.top, 5)
    }
            }
        

struct EventsScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventsScreen()
    }
}
