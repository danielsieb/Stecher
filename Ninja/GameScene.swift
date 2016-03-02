//
//  GameScene.swift
//  Ninja
//
//  Created by Matschak on 01.03.16.
//  Copyright (c) 2016 Matschak. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var pike: Pike!
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        
        addPike()
        addBalloons()
        
    }
    
    func addPike() {
        pike = Pike()
        addChild(pike)
    }
    
    func addBalloons() {
        runAction(SKAction.repeatActionForever(
            SKAction.sequence([
                SKAction.runBlock(addBalloon),
                SKAction.waitForDuration(1.0)])))
    }
    
    
    func addBalloon() {
        let balloon = SKSpriteNode(imageNamed: "Balloon")
        balloon.position = CGPoint(x: getRandomX(), y: frame.size.height)
        balloon.physicsBody = SKPhysicsBody.init(circleOfRadius: 10)
        addChild(balloon)
    }
    
    func getRandomX() -> CGFloat {
        let max = Int(frame.size.width) - 10
        let min = 10
        
        let rndValue = CGFloat(min + Int(arc4random()) % (max - min))
        
        return rndValue
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }

}
