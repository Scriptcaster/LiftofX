//
//  PostData.swift
//  LiftofX
//
//  Created by SyberPoiint on 5/17/2022.
//

import Foundation

struct Mission: Decodable, Identifiable {
    let id: String
    let name: String
    let date_local: String
    let url: String?
    let links: Links

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case date_local
        case url
        case links
    }
}

struct Links: Decodable {
    let patch: Patch
    enum CodingKeys: String, CodingKey {
        case patch
    }
}

struct Patch: Decodable {
    let small: String?
    let defaultSmall: String = "okay"
    enum CodingKeys: String, CodingKey {
        case small
    }
}


