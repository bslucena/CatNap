//
//  BedNode.swift
//  CatNap
//
//  Created by Bernardo Sarto de Lucena on 2/17/18.
//  Copyright © 2018 Bernardo Sarto de Lucena. All rights reserved.
//

import SpriteKit

class BedNode: SKSpriteNode, EventListenerNode {
    func didMoveToScene() {
        let bedBodySize = CGSize(width: 40.0, height: 30.0)
        physicsBody = SKPhysicsBody(rectangleOf: bedBodySize)
        physicsBody!.isDynamic = false
        physicsBody!.categoryBitMask = PhysicsCategory.Bed
        physicsBody!.collisionBitMask = PhysicsCategory.None
    }
}

