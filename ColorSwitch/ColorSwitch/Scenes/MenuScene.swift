//
//  MenuScene.swift
//  ColorSwitch
//
//  Created by Pratyush Sharma on 12/08/20.
//  Copyright © 2020 Pratyush Sharma. All rights reserved.
//

import SpriteKit

final class MenuScene: SKScene {
    
    private struct Style {
        static let backgroundColor: UIColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
    }
    
    override func didMove(to view: SKView) {
        backgroundColor = Style.backgroundColor
        addLogo()
        addLabels()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: (view?.bounds.size)!)
        view?.presentScene(gameScene)
    }
}

private extension MenuScene {
    
    func addLogo() {
        let logo: SKSpriteNode = SKSpriteNode(imageNamed: "logo")
        logo.size = CGSize(width: frame.width/4, height: frame.width/4)
        logo.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height/4)
        addChild(logo)
    }
    
    func addLabels() {
        let playLabel: SKLabelNode = SKLabelNode(text: "Tap To Play!")
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50.0
        playLabel.fontColor = UIColor.white
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(playLabel)
        animate(label: playLabel)
        
        
        let highScoreLabel: SKLabelNode = SKLabelNode(text: "Highscore: \(UserDefaults.standard.integer(forKey: "HighScore"))")
        highScoreLabel.fontName = "AvenirNext-Bold"
        highScoreLabel.fontSize = 40.0
        highScoreLabel.fontColor = UIColor.white
        highScoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highScoreLabel.frame.size.height*4)
        addChild(highScoreLabel)
        
        let recentScoreLabel: SKLabelNode = SKLabelNode(text: "Recent Score: \(UserDefaults.standard.integer(forKey: "RecentScore"))")
        recentScoreLabel.fontName = "AvenirNext-Bold"
        recentScoreLabel.fontSize = 40.0
        recentScoreLabel.fontColor = UIColor.white
        recentScoreLabel.position = CGPoint(x: frame.midX, y: highScoreLabel.position.y - recentScoreLabel.frame.size.height*2 )
        addChild(recentScoreLabel)
    }

    func animate(label: SKLabelNode) {
        let fadeOut: SKAction = SKAction.fadeOut(withDuration: 0.5)
        let fadeIn: SKAction = SKAction.fadeIn(withDuration: 0.5)
        let sequence: SKAction = SKAction.sequence([fadeOut, fadeIn])
        label.run(SKAction.repeatForever(sequence))
        
    }
    
}
