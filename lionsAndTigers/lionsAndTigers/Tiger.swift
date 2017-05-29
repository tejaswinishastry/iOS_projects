//
//  Tiger.swift
//  lionsAndTigers
//
//  Created by Tejaswini Shastry on 5/28/17.
//  Copyright © 2017 Tejaswini Shastry. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age:Int
    var name = ""
    var breed = ""
    var image = UIImage(named: "")
    
    init(age:Int, name:String, breed:String, image:UIImage) {
        self.age = age
        self.name = name
        self.breed = breed
        self.image = image
    }
    
}
