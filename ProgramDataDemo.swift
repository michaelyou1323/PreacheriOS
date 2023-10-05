//
//  ProgramObjectDemo.swift
//  Preacher
//
//  Created by Michaelyoussef on 12/09/2023.
//

import Foundation
class ProgramObjectDemo: Encodable,Decodable,Identifiable{
    
    var link:String = ""
    var name:String = ""
    var image:String = ""
   
    
}

extension Encodable{
    var toDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments)as? [String: Any]
    }
}
