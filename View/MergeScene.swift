//
//  MergeScene.swift
//  WWDC2023
//
//  Created by GYURI PARK on 2023/04/19.
//

import Foundation
import SpriteKit
import GameKit

class MergeScene: SKScene {
    var model = DataModel.instance
    var label: SKLabelNode?
    var sen: SKLabelNode?
    
    let background = SKSpriteNode(imageNamed: "bg")
    
    override func didMove(to view: SKView) {
        scene?.size = view.bounds.size
        scene?.scaleMode = .aspectFill
        physicsWorld.gravity = .zero
        
        // background and World
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.zPosition = 1
        background.setScale(1)
        addChild(background)
        
        // ball creation
        // top base
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            
            label = SKLabelNode(text: "Top Note")
            label?.fontColor = UIColor.black
            label?.fontName = "Helvetica-Bold"
            label?.fontSize = 60
            label?.position = CGPoint(x: size.width / 2, y: size.height / 2 - 5)
            label?.zPosition = 15
            addChild(label!)
            sen = SKLabelNode(text: "Initial emotions felt during the memory")
            sen?.fontColor = UIColor.gray
            sen?.fontName = "Helvetica-Medium"
            sen?.fontSize = 30
            sen?.position = CGPoint(x: size.width / 2, y: size.height / 2 + 50)
            sen?.zPosition = 15
            addChild(sen!)
            
            // 10초 후 ball 생성
            for i in 1...10 {
                let ball = SKShapeNode(circleOfRadius: 50)
                let color = SKColor(model.colors[0]).withAlphaComponent(0.5)
                
                ball.fillColor = color
                ball.fillTexture = SKTexture(imageNamed: model.emojiNum[0])
                ball.position = CGPoint(x: CGFloat(i) * self.size.width / 11, y: 100)
                ball.zPosition = 10
                ball.physicsBody = SKPhysicsBody(circleOfRadius: 50 / 2)
                ball.physicsBody?.friction = 0
                ball.physicsBody?.restitution = 1
                ball.physicsBody?.linearDamping = 0
                ball.physicsBody?.angularDamping = 0
                ball.physicsBody?.allowsRotation = true
                
                addChild(ball)
                
                let dx = CGFloat(arc4random_uniform(20)) - 10
                let dy = CGFloat(arc4random_uniform(20)) - 10
                ball.physicsBody?.applyImpulse(CGVector(dx: dx*4, dy: dy*4))
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {[self] in
            let fadeOut = SKAction.fadeOut(withDuration: 2)
            let remove = SKAction.removeFromParent()
            let sequence = SKAction.sequence([fadeOut, remove])
            label?.run(sequence)
            sen?.run(sequence)
            label = nil
            sen = nil
            
            // 10초 후 ball 제거
            for child in self.children {
                if let ball = child as? SKShapeNode {
                    ball.run(sequence)
                }
            }
        }
        
        // middle note
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
            
            label = SKLabelNode(text: "Middle Note")
            label?.fontColor = UIColor.black
            label?.fontName = "Helvetica-Bold"
            label?.fontSize = 60
            label?.position = CGPoint(x: size.width / 2, y: size.height / 2 - 70)
            label?.zPosition = 15
            addChild(label!)
            sen = SKLabelNode(text: "Essence of the experience")
            sen?.fontColor = UIColor.gray
            sen?.fontName = "Helvetica-Medium"
            sen?.fontSize = 30
            sen?.position = CGPoint(x: size.width / 2, y: size.height / 2 - 110)
            sen?.zPosition = 15
            addChild(sen!)
            
            // 10초 후 ball 생성
            for i in 1...30 {
                let ball = SKShapeNode(circleOfRadius: 100)
                let color = SKColor(model.colors[1]).withAlphaComponent(0.5)
                
                ball.fillColor = color
                ball.fillTexture = SKTexture(imageNamed: model.emojiNum[1])
                ball.position = CGPoint(x: CGFloat(i) * self.size.width / 11, y: 100)
                ball.zPosition = 10
                ball.physicsBody = SKPhysicsBody(circleOfRadius: 50 / 2)
                ball.physicsBody?.friction = 0
                ball.physicsBody?.restitution = 1
                ball.physicsBody?.linearDamping = 0
                ball.physicsBody?.angularDamping = 0
                ball.physicsBody?.allowsRotation = true
                
                addChild(ball)
                
                let dx = CGFloat(arc4random_uniform(20)) - 10
                let dy = CGFloat(arc4random_uniform(20)) - 10
                ball.physicsBody?.applyImpulse(CGVector(dx: dx*2, dy: dy*2))
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {[self] in
            
            let fadeOut = SKAction.fadeOut(withDuration: 2)
            let remove = SKAction.removeFromParent()
            let sequence = SKAction.sequence([fadeOut, remove])
            label?.run(sequence)
            label = nil
            sen?.run(sequence)
            sen = nil
            
            // 10초 후 ball 제거
            for child in self.children {
                if let ball = child as? SKShapeNode {
                    ball.run(sequence)
                }
            }
        }

        // Base
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [self] in
            
            label = SKLabelNode(text: "Base Note")
            label?.fontColor = UIColor.black
            label?.fontName = "Helvetica-Bold"
            label?.fontSize = 60
            label?.position = CGPoint(x: size.width / 2, y: size.height / 2 - 170)
            label?.zPosition = 15
            addChild(label!)
            sen = SKLabelNode(text: "Lasting emotions and impressions left behind")
            sen?.fontColor = UIColor.gray
            sen?.fontName = "Helvetica-Medium"
            sen?.fontSize = 30
            sen?.position = CGPoint(x: size.width / 2, y: size.height / 2 - 200)
            sen?.zPosition = 15
            addChild(sen!)
            
            // 10초 후 ball 생성
            for i in 1...15 {
                let ball = SKShapeNode(circleOfRadius: 80)
                let color = SKColor(model.colors[2]).withAlphaComponent(0.5)
                
                ball.fillColor = color
                ball.fillTexture = SKTexture(imageNamed: model.emojiNum[2])
                ball.position = CGPoint(x: CGFloat(i) * self.size.width / 11, y: 100)
                ball.zPosition = 10
                ball.physicsBody = SKPhysicsBody(circleOfRadius: 50 / 2)
                ball.physicsBody?.friction = 0
                ball.physicsBody?.restitution = 1
                ball.physicsBody?.linearDamping = 0
                ball.physicsBody?.angularDamping = 0
                ball.physicsBody?.allowsRotation = true
                
                addChild(ball)
                
                let dx = CGFloat(arc4random_uniform(20)) - 10
                let dy = CGFloat(arc4random_uniform(20)) - 10
                ball.physicsBody?.applyImpulse(CGVector(dx: dx*1.5, dy: dy*1.5))
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 17) {[self] in
            
            let fadeOut = SKAction.fadeOut(withDuration: 2)
            let remove = SKAction.removeFromParent()
            let sequence = SKAction.sequence([fadeOut, remove])
            label?.run(sequence)
            label = nil
            sen?.run(sequence)
            sen = nil
            
            // 10초 후 ball 제거
            for child in self.children {
                if let ball = child as? SKShapeNode {
                    ball.run(sequence)
                }
            }
        }
        let frame = SKPhysicsBody(edgeLoopFrom: self.frame)
        frame.friction = 0
        self.physicsBody = frame
    }
}
