//
//  CakeType.swift
//  CodableVSObjectMapper
//
//  Created by KaiYun Chiang on 2021/2/23.
//

import Foundation

// MARK: - CakeType
struct CakeType: Codable {
    var version: String
    var cakeTypeList: [CakeTypeList]
}

// MARK: - CakeTypeList
struct CakeTypeList: Codable {
    var name: String
    var price: Int
}
