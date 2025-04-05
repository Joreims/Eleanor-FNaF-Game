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
        let menuImage = SKSpriteNode(imageNamed: "MenuScene")

        // Ajustar el tamaño al ancho o alto de la pantalla, pero sin distorsionar
        _ = menuImage.size.width / menuImage.size.height
        let scaleFactor = frame.size.width / menuImage.size.width

        menuImage.setScale(scaleFactor)
        menuImage.position = CGPoint(x: frame.midX, y: frame.midY)

        addChild(menuImage)
        
        playButton.text = "Play"
        playButton.fontSize = 40
        playButton.position = CGPoint(x: size.width/2, y: size.height/3)
        addChild(playButton)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            for touch in touches {
                let location = touch.location(in: self)
                let node = atPoint(location)
                
                if node.name == "playButton" {
                    // Llama a la función para cambiar de escena
                    goToGameScene()
                }
            }
        }
        
        func goToGameScene() {
            // Crea una nueva escena para el juego
            let gameScene = GameScene(size: self.size)
            
            // Configura una transición entre escenas (puedes elegir la que más te guste)
            let transition = SKTransition.fade(withDuration: 1.0)
            
            // Realiza la transición
            self.view?.presentScene(gameScene, transition: transition)
        }
    }
