

import SwiftUI

struct FirstProgramm: View {
    
@StateObject
    var viewModel = ProgramAndEventsModel()
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible())

       ]

    var body: some View {
        NavigationView{
       
            VStack {
                
//                Text("جيل جديد").onAppear(perform: viewModel.observelistOfFirstProgram).frame(height: 2).padding(.top,15)

                ScrollView {
                    VStack (
                        alignment:.leading,spacing: 10
                    ){
//                        Text("").frame(height:0)
                    }.padding(1)
                    
                    if !viewModel.listObject.isEmpty {
                        
                        VStack{
                            LazyVGrid(columns: columns,spacing: 30) {
                                ForEach(viewModel.listObject) {
                                    
                                    object
                                    in
                                    
                                    ZStack {
                                      
                                        let shape = RoundedRectangle(cornerRadius: 20)
                                        shape.fill().foregroundColor(.gray.opacity(0.01))
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
                                                shape.fill().foregroundColor(.gray.opacity(0.3))
                                                    .foregroundStyle(Color.gray.opacity(0.02))
                                                    .frame( height: 60).padding(.horizontal,30)
                                                //                                                   AsyncImage(url: URL(string: object.image))
                                                //                                                       .frame(width: 40, height: 40)
                                                if object.image != "" {
                                                    
                                                    AsyncImage(url: URL(string: object.image)) { image in
                                                        image.resizable()
                                                            .cornerRadius(20)
                                                    } placeholder: {
                                                        ProgressView()
                                                    }
                                                    .frame( height: 60).padding(.horizontal,15)
                                                   
                                                } else{
                                                    AsyncImage(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/preacher-41c11.appspot.com/o/programme%20Images%2Fyoutube_logo_icon_transparent___32.png?alt=media&token=2b9a5ee0-b876-4f0d-8a69-467ed4ff73e0")) { image in
                                                        image.resizable().aspectRatio(contentMode: .fill)
                                                            .cornerRadius(20)
                                                    } placeholder: {
                                                        ProgressView()
                                                    }
                                                    .frame( height: 30).padding(.horizontal,30)
                                                    .padding(.top, 10)
                                                }
                                                
                                                
                                            } .onTapGesture() {
                                                if object.link != "" {
                                                    UIApplication.shared.open(URL(string:object.link)!)
                                                }else{
                                                  
                                                }
                                                
                                            }
                                            
                                            
                                            
                                            ZStack{
                                                
                                                let shape2 = RoundedRectangle(cornerRadius:20)
                                                shape2.fill().foregroundStyle(Color.gray.opacity(0.02))
                                                shape2.stroke(Color.red,lineWidth: 3)
//                                                    .frame( height: 23).padding(.horizontal,15)
//                                                    .padding(.top, 3)
//                                                
                                                Text(object.name)
                                            }.frame( height: 23).padding(.horizontal,15)
                                                .padding(.top, 10)
                                            
                                            
                                            
                                            
                                        } 
                                        .frame( height: 23).padding(.horizontal,15)
                                           
                                        
                                        
                                    }
                                    .frame( height: 140).padding(.horizontal,15)
                                       
                                    
                                }
                                
                            }
                            
                        }
                    }
                }.padding()
                           

            }.background(Color.gray.opacity(0.3))

                   }.onAppear(perform: viewModel.observelistOfFirstProgram)
    }
            }
        
    
    


struct FirstProgramm_Previews: PreviewProvider {
    static var previews: some View {
FirstProgramm()
        
    }
}
