//
//  shapeType.swift
//  spinning-cube-app
//
//  Created by Kuba Zeligowski on 20.12.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit

enum ShapeType {
    case box = 0
    case sphere, piramid, torus, capsule, cilinder, cone, tube
    
    static func random() -> ShapeType {
        let maxValue = tube.rawValue
        let rand = arc4random_uniform(UIN)
    }
}
