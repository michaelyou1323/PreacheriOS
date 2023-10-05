//
//  ObjectDemo.swift
//  Preacher
//
//  Created by Michaelyoussef on 30/08/2023.
//

import Foundation
class ObjectDemo: Encodable{
    var firstName:String = ""
    var lastName:String = ""
    var phoneNumber:String = ""
    var country:String = ""
    var city:String = ""
    var region:String = ""
    var church:String = ""
    var email:String = ""
    
    
}

extension Encodable{
    var tooDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self)
        else{
            return nil
        }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}
