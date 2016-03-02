//
//  GameScene.swift
//  Ninja
//
//  Created by Matschak on 01.03.16.
//  Copyright (c) 2016 Matschak. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let pike = SKSpriteNode(imageNamed: "Pike")
    
    override func didMoveToView(view: SKView) {
        backgroundColor = UIColor(red: 159.0/255.0, green: 201.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        pike.position = CGPoint(x: 100, y: 55)
        pike.size = CGSize(width: 10, height: 110)
        addChild(pike)
        runAction(SKAction.repeatActionForever(
            SKAction.sequence([
                SKAction.runBlock(addBallons),
                SKAction.waitForDuration(1.0)])))
        }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
           }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func getRandomX() -> CGFloat {
        let max = Int(frame.size.width) - 10
        let min = 10
        
        let rndValue = CGFloat(min + Int(arc4random()) % (max - min))

        return rndValue
    }
    
    
    func addBallons() {
        let balloon = Balloon(positionX: getRandomX(), positionY: frame.size.height - 10)
        addChild(balloon)
        if CGPointEqualToPoint(balloon.position, CGPoint(x: balloon.xScale, y: 100)) {
            balloon.removeFromParent()
        }
    }
    
}
