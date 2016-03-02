//
//  Balloon.swift
//  Ninja
//
//  Created by Daniel Siebert on 02/03/16.
//  Copyright © 2016 Matschak. All rights reserved.
//

import Foundation
import SpriteKit

class Balloon: SKSpriteNode {
    init(positionX: CGFloat, positionY: CGFloat) {
        self.position = CGPoint(x: positionX, y: positionY)
        self.physicsBody = SKPhysicsBody(circleOfRadius: 10)
    }
}

