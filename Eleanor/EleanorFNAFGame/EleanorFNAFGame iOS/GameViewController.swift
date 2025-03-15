//
//  GameViewController.swift
//  EleanorFNAFGame iOS
//
//  Created by student on 3/15/25.
//
import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = MenuScene(size: CGSize(width: 750, height: 1334)) // Cargar el menú principal
        let skView = view as! SKView
        skView.presentScene(scene)
}


    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

