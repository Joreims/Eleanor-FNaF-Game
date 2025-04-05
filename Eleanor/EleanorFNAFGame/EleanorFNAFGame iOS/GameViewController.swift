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
        
        let scene = MenuScene(size: view.bounds.size) // Cargar el menú principal
        let skView = view as! SKView
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = true
        skView.showsFPS = true
        skView.showsNodeCount = true
}


    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape  // Solo modo horizontal
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

