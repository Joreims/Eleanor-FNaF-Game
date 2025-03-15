//
//  MenuScene.swift
//  EleanorFNAFGame iOS
//
//  Created by student on 3/15/25.
//

import SpriteKit

class MenuScene: SKScene{
    let playButton = SKLabelNode(fontNamed: "Arial")
    // Button to start the night
    
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "MenuScene")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
        
        playButton.text = "Play"
        playButton.fontSize = 40
        playButton.position = CGPoint(x: size.width/2, y: size.height/3)
        addChild(playButton)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let location = touch.location(in: self)
            let touchedNode = self.atPoint(location)
            
            if touchedNode.name == "playButton" {
                let gameScene = GameScene(size: self.size)
                gameScene.scaleMode = .aspectFit
                self.view?.presentScene(gameScene)
            }
        }
    }
}
