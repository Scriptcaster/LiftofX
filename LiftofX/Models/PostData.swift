//
//  PostData.swift
//  LiftofX
//
//  Created by SyberPoiint on 5/17/2022.
//

import Foundation

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let points: Int
    let url: String?
    let title: String
}

struct Initial: Decodable {
    let mission: [Mission]
}

struct Mission: Decodable, Identifiable {
    let id: String
    let name: String
    let date_local: String
    let url: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case date_local = "date_local"
        case url = "url"
    }
}
