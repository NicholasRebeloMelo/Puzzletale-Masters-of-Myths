//
//  GameScene.swift
//  PuzzleTale
//
//  Created by Nicholas Melo on 2020-03-09.
//  Copyright © 2020 Nicholas Melo. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let background = Background()
    let player = Player()
    var location = CGPoint()
    var playerIsTouched = false
    
    override func didMove(to view: SKView) {
        backgroundColor = SKColor.black
        //let background = SKSpriteNode(imageNamed: "frame_00_delay-0.08s")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2 )
        print(self.scene?.frame)
        background.xScale = 3
        background.yScale = 2.4
        player.setScale(3)
        addChild(background)
        addChild(player)
        player.zPosition = 1
        player.position = CGPoint(x: 400, y: 490)
    }
    
    override func update(_ currentTime: TimeInterval) {
        player.update(timeInterval: currentTime)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            if player.contains(touch.location(in: self)) {
                playerIsTouched = true
            } else {
            }
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if (playerIsTouched == true) {
            player.position = (touches.first?.location(in: self))!
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if playerIsTouched {
            playerIsTouched = false
        }
    }
}
