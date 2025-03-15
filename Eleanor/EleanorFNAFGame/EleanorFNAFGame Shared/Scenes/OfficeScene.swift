//
//  OfficeScene.swift
//  EleanorFNAFGame iOS
//
//  Created by student on 3/15/25.
//

import SpriteKit

class OfficeScene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "office")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(background)
    }
    
}


