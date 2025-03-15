//
//  BonnieBowlScene.swift
//  EleanorFNAFGame iOS
//
//  Created by student on 3/15/25.
//
import SpriteKit

class BonnieBowlScene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "BonnieBowl")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
    }
    
}
