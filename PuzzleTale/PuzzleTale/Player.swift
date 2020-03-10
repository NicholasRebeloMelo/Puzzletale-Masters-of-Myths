//
//  Player.swift
//  PuzzleTale
//
//  Created by Michael Kolodzinski on 2020-03-10.
//  Copyright © 2020 Nicholas Melo. All rights reserved.
//

import Foundation
import SpriteKit

class Player: SKSpriteNode {
    
    static let playerImageNames: [String] = ["run1", "run2", "run3"]
    static let idleAnimationKey = "Idle"
    
    init(){
        let texture = SKTexture(imageNamed: "run1")
        super.init(texture: texture, color: .clear, size: texture.size())
        
        let idle = animateThrough(images: [SKTexture(imageNamed: Player.playerImageNames[0]),
                                           SKTexture(imageNamed: Player.playerImageNames[1]),
                                           SKTexture(imageNamed: Player.playerImageNames[2]),],
                                  duration: 1,
                                  repeats: true)
        
        self.run(idle, withKey: Player.idleAnimationKey)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(timeInterval: TimeInterval) {
       
    }
}
