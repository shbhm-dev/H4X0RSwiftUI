//
//  PostData.swift
//  HRXoR
//
//  Created by STARKS on 1/30/20.
//  Copyright © 2020 STARKS. All rights reserved.
//

import Foundation

struct Results : Decodable{
    let hits : [Post]
    
}

struct Post : Decodable ,Identifiable{
    var id : String {
        return objectID
        
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String!
    
}
