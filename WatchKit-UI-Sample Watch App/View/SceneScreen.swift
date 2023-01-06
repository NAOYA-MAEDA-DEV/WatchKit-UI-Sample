//
//  SceneScreen.swift
//  WatchKit-UI-Sample Watch App
//
//  Created by N. M on 2023/01/05.
//

import SwiftUI
import SceneKit

struct SceneScreen: View {
    var body: some View {
        SceneView(
            scene: makeScene(),
            options: []
        )
    }
    
    private func makeScene() -> SCNScene {
        let scene = SCNScene(named: "ship.scn",inDirectory: "art.scnassets/ship")
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene!.rootNode.addChildNode(cameraNode)
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 2)
        
        let ship = scene!.rootNode.childNodes.first!
        ship.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 1)))
         
        return scene!
    }
}

struct SceneScreen_Previews: PreviewProvider {
    static var previews: some View {
        SceneScreen()
    }
}
