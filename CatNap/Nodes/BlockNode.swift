//
//  BlockNode.swift
//  CatNap
//
//  Created by Bernardo Sarto de Lucena on 2/18/18.
//  Copyright © 2018 Bernardo Sarto de Lucena. All rights reserved.
//

import SpriteKit

class  BlockNode: SKSpriteNode, EventListenerNode, InteractiveNode {
    func didMoveToScene() {
        isUserInteractionEnabled = true
    }
    
    func interact() {
        isUserInteractionEnabled = false
        run(SKAction.sequence([SKAction.playSoundFileNamed("pop.mp3", waitForCompletion: false), SKAction.scale(to: 0.8, duration: 0.1), SKAction.removeFromParent()]))
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("destroy block")
        interact()
    }
    
}
