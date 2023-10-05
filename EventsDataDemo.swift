//
//  EventsDataDemo.swift
//  Preacher
//
//  Created by Michaelyoussef on 18/09/2023.


import Foundation
class EventsObjectDemo: Encodable,Decodable,Identifiable{
    
    var link:String = ""
    var title:String = ""
    var imageUrl:String = ""
    var description:String = ""
   
    
}

extension Encodable{
    var toooDictionary: [String: Any]?{
        guard let data = try? JSONEncoder().encode(self) else{
            return nil
        }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments)as? [String: Any]
    }
}
