//
//  ViewController.swift
//  CodableVSObjectMapper
//
//  Created by KaiYun Chiang on 2021/2/23.
//

import UIKit

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

        print("jsonStrToDictionary: \(json.toDictionary())")
    }


}

