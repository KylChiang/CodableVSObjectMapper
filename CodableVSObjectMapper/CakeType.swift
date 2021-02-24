//
//  CakeType.swift
//  CodableVSObjectMapper
//
//  Created by KaiYun Chiang on 2021/2/23.
//

import Foundation
import ObjectMapper

// MARK: - CakeType
struct CakeType: Mappable {
    var version: String = ""
    var cakeTypeList: [CakeTypeList] = [CakeTypeList]()
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        version <- map["version"]
        cakeTypeList <- map["cakeTypeList"]
    }
}

// MARK: - CakeTypeList
struct CakeTypeList: Mappable {
    var name: String = ""
    var price: Int = 0
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        name <- map["name"]
        price <- map["price"]
    }
    
}
