//
//  User.swift
//  Preacher
//
//  Created by Michaelyoussef on 29/08/2023.


import Foundation

struct User: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var link: String

//    var username: String
    
}
