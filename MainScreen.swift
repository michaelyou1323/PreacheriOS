//
//  MainScreen.swift
//  Preacher
//
//  Created by Michaelyoussef on 08/08/2023.
//

import SwiftUI
import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

struct MainScreen: View {
    @State private var items: [Item] = []
    
    
    var listOfEventObjects = [EventsObjectDemo]()
    @StateObject
    var viewModel = ProgramAndEventsModel()
    
    var eventList: [String] = []
    
    
    var body: some View {
        
        VStack {
            Color.gray.opacity(0.01).ignoresSafeArea()
            VStack( ){
                Color.gray.opacity(0.3)
                NavigationLink(destination: EventsScreen()) {
                              ZStack {
                                  let shape = RoundedRectangle(cornerRadius: 20)
                                  shape.fill().foregroundColor(.gray.opacity(0.01))
                                 
                                  if let lastItem = items.last {

                                      AsyncImage(url: URL(string:lastItem.imageUrl)) { image in
                                          image.resizable().aspectRatio(contentMode: .fit)
                                              .cornerRadius(20)
                                      } placeholder: {
                                          ProgressView()
                                      }
                                  }else{
                                     
                                         
                                  }
                              }.frame( height: 250)
        
                } .padding(.horizontal,30)
                    .padding(.top,120)
                
                
                NavigationLink(destination: EventsScreen()) {
                    Text("المزيد").frame( height: 6)
                        .foregroundStyle(.blue)
                        .font(.system(size:16))
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        )
                    
                }.frame(maxWidth: .infinity, alignment: .bottomTrailing)
                    .padding(.horizontal,32)

            }
          
            
           
            
                

            VStack{
                
                    NavigationLink(destination: FormScreen()) {
                        Text(" تابعني    ").frame(height: 55)
                            .foregroundStyle(.red)
                            .font(.headline)
                            .padding(.horizontal,25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.red, lineWidth: 2)
                            )
                        
                    }
                    
                
                    
            }.padding(.top ,120)
                .padding(.bottom , 70)
               
               
                
                
                
                
            }  // Remove the top padding
            // Remove the bottom padding
            .background(.gray.opacity(0.3))
            .onAppear(perform: {
                fetchData()
            })
            
        
            
            
            
            
            
    }
        
      
    func fetchData() {
         let databaseRef = Database.database().reference()
         
         databaseRef.child("Events").observe(.value) { snapshot in
             var fetchedItems: [Item] = []
             
             for child in snapshot.children {
                 if let snapshot = child as? DataSnapshot,
                    let itemDict = snapshot.value as? [String: Any],
                    let title = itemDict["title"] as? String,
                    let description = itemDict["description"] as? String,
                    let link = itemDict["link"] as? String,
                    let imageUrl = itemDict["imageUrl"] as? String{
                     let item = Item(id: snapshot.key, title: title, description: description, link: link,imageUrl: imageUrl)
                     fetchedItems.append(item)
                 }
             }
             
             self.items = fetchedItems
         }
     }

    }
 





//func observelistOfEventes(){
//    @StateObject
//        var viewModel = ProgramAndEventsModel()
//
//        var eventList: [String] = []
//
//    ForEach(viewModel.listOfEventObjects) {
//
//               object
//               in
//
//     let _ = eventList.append(object.imageUrl)
//
//           }
//
////return eventList
//}

//func myArrayReturningFunc() -> [String] {
//    @StateObject
//        var viewModel = ProgramAndEventsModel()
//      
//        var eventList: [String] = []
//    ForEach(viewModel.listOfEventObjects) {
//               
//               object
//               in
//        
//     let _ = eventList.append(object.imageUrl)
//
//           }
//
//return eventList
//
//}

struct DetailView: View {
    var body: some View {
        Text("Detail Screen")
            .font(.title)
//            SecondProgramm()
    }
}

//01203136617
struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

struct Item: Identifiable {
    let id: String
    let title: String
    let description: String
    let link: String
    let imageUrl: String
}
