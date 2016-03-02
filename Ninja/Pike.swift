//
//  Pike.swift
//  Ninja
//
//  Created by Daniel Siebert on 02/03/16.
//  Copyright © 2016 Matschak. All rights reserved.
//

import Foundation
import SpriteKit

class Pike: SKSpriteNode {

    init() {
        let image = SKTexture(imageNamed: "Pike")
        let size = CGSize(width: 10, height: 110)
        let position = CGPoint(x: 100, y: 55)
        super.init(texture: image, color: UIColor.clearColor(), size: size)
        loadBody(size, position: position)
    }
    
    func loadBody(size: CGSize, position: CGPoint) {
        self.size = size
        self.position = position
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}