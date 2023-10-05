//
//  DataModel.swift
//  Preacher
//
//  Created by Michaelyoussef on 22/08/2023.
//

import Foundation
import FirebaseDatabase
import FirebaseDatabaseSwift


class WriteViewModel: ObservableObject{
    
    private let ref = Database.database().reference ()

    func pushNewValue (value: String) {
        ref.setValue(value)
    }
    
    func pushObject (firstname: String,lastname: String,phonenumber: String,country: String,city: String,region: String,church: String,email: String) {
        let generateObject = ObjectDemo()
        generateObject.firstName = String(firstname)
        generateObject.lastName = String(lastname)
        generateObject.phoneNumber = String(phonenumber)
        generateObject.country = String(country)
        generateObject.city = String(city)
        generateObject.region = String(region)
        generateObject.church = String(church)
        generateObject.email = String(email)
        ref.child("Users").child(phonenumber + " " + firstname).setValue(generateObject.toDictionary)
   
        
        }
}
