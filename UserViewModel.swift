//
//  UserViewModel.swift
//  Preacher
//
//  Created by Michaelyoussef on 29/08/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseDatabase
import FirebaseDatabaseSwift

class userViewModel: ObservableObject{
   
    
    @Published
    var users = [User]()
    var ref = Database.database().reference()
    private var db = Firestore.firestore()
    
    func fetchData(){
        
        db.collection("users").addSnapshotListener { (querySnapshot,error ) in
            guard let documents = querySnapshot?.documents else{
                print("No documents")
                return
            }
            self.users = documents.map{ (QueryDocumentSnapshot) -> User in
                let data = QueryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let surname = data["surname"] as? String ?? ""
                return User(name: name , surname: surname)
            }
        }
    }
}
