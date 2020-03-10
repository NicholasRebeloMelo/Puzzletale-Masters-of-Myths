//
//  Background.swift
//  PuzzleTale
//
//  Created by Michael Kolodzinski on 2020-03-10.
//  Copyright © 2020 Nicholas Melo. All rights reserved.
//

import Foundation
import SpriteKit

class Background: SKSpriteNode {
    
    static let backgroundImageNames: [String] = ["frame_00_delay-0.08s",
                                                 "frame_01_delay-0.08s",
                                                 "frame_02_delay-0.08s",
                                                 "frame_03_delay-0.08s",
                                                 "frame_04_delay-0.08s",
                                                 "frame_05_delay-0.08s",
                                                 "frame_06_delay-0.08s",
                                                 "frame_07_delay-0.08s",
                                                 "frame_08_delay-0.08s",
                                                 "frame_09_delay-0.08s",
                                                 "frame_10_delay-0.08s",
                                                 "frame_11_delay-0.08s",
                                                 "frame_12_delay-0.08s",
                                                 "frame_13_delay-0.08s",
                                                 "frame_14_delay-0.08s",
                                                 "frame_15_delay-0.08s",
                                                 "frame_16_delay-0.08s",
                                                 "frame_17_delay-0.08s",
                                                 "frame_18_delay-0.08s",
                                                 "frame_19_delay-0.08s",
                                                 "frame_20_delay-0.08s",
                                                 "frame_21_delay-0.08s",
                                                 "frame_22_delay-0.08s",
                                                 "frame_23_delay-0.08s",
                                                 "frame_24_delay-0.08s",
                                                 "frame_25_delay-0.08s",
                                                 "frame_26_delay-0.08s",
                                                 "frame_27_delay-0.08s",
                                                 "frame_28_delay-0.08s",
                                                 "frame_29_delay-0.08s",
                                                 "frame_30_delay-0.08s",
                                                 "frame_31_delay-0.08s",
                                                 "frame_32_delay-0.08s",
                                                 "frame_33_delay-0.08s",
                                                 "frame_34_delay-0.08s",
                                                 "frame_35_delay-0.08s",
                                                 "frame_36_delay-0.08s",
                                                 "frame_37_delay-0.08s",
                                                 "frame_38_delay-0.08s",
                                                 "frame_39_delay-0.08s",
                                                 "frame_40_delay-0.08s",
                                                 "frame_41_delay-0.08s",
                                                 "frame_42_delay-0.08s",
                                                 "frame_43_delay-0.08s",
                                                 "frame_44_delay-0.08s",
                                                 "frame_45_delay-0.08s",
                                                 "frame_46_delay-0.08s",
                                                 "frame_47_delay-0.08s",
                                                 "frame_48_delay-0.08s",
                                                 "frame_49_delay-0.08s",
                                                 "frame_50_delay-0.08s",
                                                 "frame_51_delay-0.08s",
                                                 "frame_52_delay-0.08s",
                                                 "frame_53_delay-0.08s",
                                                 "frame_54_delay-0.08s",
                                                 "frame_55_delay-0.08s",
                                                 "frame_56_delay-0.08s",
                                                 "frame_57_delay-0.08s",
                                                 "frame_58_delay-0.08s",
                                                 "frame_59_delay-0.08s",
                                                 "frame_60_delay-0.08s",
                                                 "frame_61_delay-0.08s",
                                                 "frame_62_delay-0.08s",
                                                 "frame_63_delay-0.08s",
                                                 "frame_64_delay-0.08s",
                                                 "frame_65_delay-0.08s",
                                                 "frame_66_delay-0.08s",
                                                 "frame_67_delay-0.08s",
                                                 "frame_68_delay-0.08s",
                                                 "frame_69_delay-0.08s",
                                                 "frame_70_delay-0.08s",
                                                 "frame_71_delay-0.08s",
                                                 "frame_72_delay-0.08s",
                                                 "frame_73_delay-0.08s",
                                                 "frame_74_delay-0.08s",
                                                 "frame_75_delay-0.08s",
                                                 "frame_76_delay-0.08s",
                                                 "frame_77_delay-0.08s",
                                                 "frame_78_delay-0.08s",
                                                 "frame_79_delay-0.08s",
                                                 "frame_80_delay-0.08s",
                                                 "frame_81_delay-0.08s",
                                                 "frame_82_delay-0.08s",
                                                 "frame_83_delay-0.08s",
                                                 "frame_84_delay-0.08s",
                                                 "frame_85_delay-0.08s",
                                                 "frame_86_delay-0.08s",
                                                 "frame_87_delay-0.08s",
                                                 "frame_88_delay-0.08s",
                                                 "frame_89_delay-0.08s",
                                                 "frame_90_delay-0.08s",
                                                 "frame_91_delay-0.08s",
                                                 "frame_92_delay-0.08s",
                                                 "frame_93_delay-0.08s"]
    static let idleAnimationKey = "Idle"
    
    init(){
        let texture = SKTexture(imageNamed: "frame_93_delay-0.08s")
        super.init(texture: texture, color: .clear, size: texture.size())
        
        let textures = Background.backgroundImageNames.map { (imageString) -> SKTexture in
            return SKTexture(imageNamed: imageString)
        }

        let animation = SKAction.animate(with: textures, timePerFrame: 0.1)
        
        let repeatAnimation = SKAction.repeatForever(animation)
        self.run(repeatAnimation, withKey: Background.idleAnimationKey)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func update(timeInterval: TimeInterval) {
       
    }
}
