//
//  GameViewController.swift
//  spinning-cube-app
//
//  Created by Kuba Zeligowski on 20.12.2017.
//  Copyright © 2017 Kuba Zeligowski. All rights reserved.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {
    
    var scnView: SCNView!
    var scnScene: SCNScene!
    var cameraNode: SCNNode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupScene()
        setupCamera()
        spawnShape(x: 0.6, y: 0.6, z: 0.0)
        spawnShape(x: 0.6, y: -0.6, z: 0.0)
        spawnShape(x: -0.6, y: 0.6, z: 0.0)
        spawnShape(x: -0.6, y: -0.6, z: 0.0)
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupView() {
        scnView = self.view as! SCNView
    }
    
    func setupScene() {
        scnScene = SCNScene()
        scnView.allowsCameraControl = true
        scnView.autoenablesDefaultLighting = true
        scnView.scene = scnScene
    }
    
    func setupCamera() {
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 4)
        scnScene.rootNode.addChildNode(cameraNode)
    }
    
    func spawnShape(x: Float, y: Float, z: Float) {
        var geometry = SCNGeometry()
        geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        let geometryNode = SCNNode(geometry: geometry)
        geometryNode.position.x = x
        geometryNode.position.y = y
        geometryNode.position.z = z
        scnScene.rootNode.addChildNode(geometryNode)
    }
}
