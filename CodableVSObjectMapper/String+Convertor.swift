//
//  String+Convertor.swift
//  CodableVSObjectMapper
//
//  Created by KaiYun Chiang on 2021/2/24.
//

import Foundation

extension String {
    // refer: https://www.hackingwithswift.com/example-code/system/how-to-parse-json-using-jsonserialization
    func toDictionary() -> [String: Any] {
        let data = Data(self.utf8)
        
        do {
            if let jsonDic = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return jsonDic
            }
        } catch let error as NSError {
            print("String toDictionary() error: \(error.debugDescription)")
            return [:]
        }
        return [:]
    }
}
