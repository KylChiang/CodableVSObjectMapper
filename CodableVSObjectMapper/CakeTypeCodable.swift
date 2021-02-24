//
//  CakeTypeCodable.swift
//  CodableVSObjectMapper
//
//  Created by KaiYun Chiang on 2021/2/24.
//

import Foundation

// MARK: - CakeTypeCodable
struct CakeTypeCodable: Codable {
    var version: String
    var cakeTypeList: [CakeTypeListCodable]
}

// MARK: - CakeTypeList
struct CakeTypeListCodable: Codable {
    var name: String
    var price: Int
}
