//
//  ProgramsDataModel.swift
//  Preacher
//
//  Created by Michaelyoussef on 12/09/2023.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift

class ProgramAndEventsModel: ObservableObject{
  
    var ref = Database.database().reference()
    
    @Published
    var listObject = [ProgramObjectDemo]()
    
    @Published
    var listOfEventObjects = [EventsObjectDemo]()
    
    @Published
    var object: ProgramObjectDemo? = nil
   
    
    
    func observelistOfFirstProgram(){
        ref.child("NewGen").observe(.value){parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            self.listObject = children.compactMap({ snapshot in
                return try? snapshot.data(as: ProgramObjectDemo.self)
            })
            
        }
        
    }
    
    func observelistOfSecondProgram(){
        ref.child("SecretsDetector").observe(.value){parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            self.listObject = children.compactMap({ snapshot in
                return try? snapshot.data(as: ProgramObjectDemo.self)
            })
            
        }
        
    }
    
    func observelistOfThirdProgram(){
        ref.child("SecretsDetector").observe(.value){parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            self.listObject = children.compactMap({ snapshot in
                return try? snapshot.data(as: ProgramObjectDemo.self)
            })
            
        }
        
    }
    
    func observelistOfForthProgram(){
        ref.child("SecretsDetector").observe(.value){parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            self.listObject = children.compactMap({ snapshot in
                return try? snapshot.data(as: ProgramObjectDemo.self)
            })
            
        }
        
    }
    
    func observelistOfFifthProgram(){
        ref.child("SecretsDetector").observe(.value){parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            self.listObject = children.compactMap({ snapshot in
                return try? snapshot.data(as: ProgramObjectDemo.self)
            })
            
        }
        
    }
    
    func observelistOfEventes(){
        ref.child("Events").observe(.value){parentSnapshot in
            guard let children = parentSnapshot.children.allObjects as? [DataSnapshot] else {
                return
            }
            self.listOfEventObjects = children.compactMap({ snapshot in
                return try? snapshot.data(as: EventsObjectDemo.self)
            })
            
        }
        
    }
    
  
    
    
    
}

