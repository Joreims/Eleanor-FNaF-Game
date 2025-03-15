//
//  CameraScene.swift
//  EleanorFNAFGame iOS
//
//  Created by student on 3/15/25.
//

import SpriteKit

class CameraScene: SKScene{
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "Cameras")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        addChild(background)
    }
    let AirBallonCam = SKSpriteNode(imageNamed: "AirBallonCam")
    let ArcadeCam = SKSpriteNode(imageNamed: "ArcadeCam")
    let BackstageCam = SKSpriteNode(imageNamed: "BackstageCam")
    let BonnieBowlCam = SKSpriteNode(imageNamed: "BonnieBowlCam")

}
