//
//  MessageNode.swift
//  CatNap
//
//  Created by Bernardo Sarto de Lucena on 2/18/18.
//  Copyright © 2018 Bernardo Sarto de Lucena. All rights reserved.
//

import SpriteKit

class MessageNode: SKLabelNode {
    convenience init(message: String) {
        self.init(fontNamed: "AvenirNext-Regular")
        text = message
        fontSize = 256.0
        fontColor = SKColor.gray
        zPosition = 100
        let front = SKLabelNode(fontNamed: "AvenirNext-Regular")
        front.text = message
        front.fontSize = 256.0
        front.fontColor = SKColor.white
        front.position = CGPoint(x: -2, y: -2)
        addChild(front)
        
        physicsBody = SKPhysicsBody(circleOfRadius: 10)
        physicsBody!.collisionBitMask = PhysicsCategory.Edge
        physicsBody!.categoryBitMask = PhysicsCategory.Label
        physicsBody!.restitution = 0.7
        physicsBody!.contactTestBitMask = PhysicsCategory.Edge
        physicsBody!.restitution = 0.7
    
    }
    
    private var bounceCount = 0
    func didBounce() {
        bounceCount += 1
        if bounceCount >= 4 {
            removeFromParent()
        }
    }
    
}
