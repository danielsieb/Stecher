//
//  GameScene.swift
//  Ninja
//
//  Created by Matschak on 01.03.16.
//  Copyright (c) 2016 Matschak. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let lanze = SKSpriteNode(imageNamed: "Lanze")
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        lanze.position = CGPoint(x: 100, y: 55)
        lanze.size = CGSize(width: 10, height: 110)
        addChild(lanze)
        runAction(SKAction.repeatActionForever(
            SKAction.sequence([
                SKAction.runBlock(addBallons),
                SKAction.waitForDuration(0.5)])))
        }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
           }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    
    func random() -> CGFloat {
        
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    
    func random (min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (min-max) + max
    }
    
    
    func addBallons() {
        let ballon = SKSpriteNode(imageNamed: "Ballon")
        ballon.position = CGPoint(x: randomX(), y: frame.size.height - 10)
        addChild(ballon)
    }
    
    func randomX() -> CGFloat {
        if (frame.size.width * random(0, max: 1) ) > (frame.size.width-10) {
            return frame.size.width * random(0, max: 1) - 20 }
            
            else { return frame.size.width * random(0, max: 1) }
        
    }
}
