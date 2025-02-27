//
//  ViewController.swift
//  CodableVSObjectMapper
//
//  Created by KaiYun Chiang on 2021/2/23.
//

import UIKit
import ObjectMapper

class ViewController: UIViewController {
    let json = """
    {
      "version": "1.2.3",
      "cakeTypeList": [
        {
            "name": "Banna Cake",
            "price": 150
        },
        {
            "name": "Chocolate Cake",
            "price": 200
        }
      ]
    }
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // using ObjectMapper
        let cakeType = CakeType(JSONString: json)
        print("\(cakeType?.cakeTypeList[1].name ?? "")")
        
        // using codable
        if let cakeType = getModel(json: json, to: CakeTypeCodable.self) {
            print("\(cakeType.cakeTypeList[1].name)")
        }
        
    }

    func getModel<T: Decodable>(json: String, to type: T.Type) -> T? {
        let jsonData = Data(json.utf8)
        
        if let item = try? JSONDecoder().decode(T.self, from: jsonData) {
            return item
        }
        return nil
    }
}

