//
//  PartsServiceScene.swift
//  EleanorFNAFGame iOS
//
//  Created by student on 3/15/25.
//

import SpriteKit

class PartsServiceScene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "PartsService")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
    }
    
}
