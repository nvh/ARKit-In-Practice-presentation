import UIKit
import ARKit

class ARDelegate: NSObject, ARSCNViewDelegate {
    @objc func didTapView(sender: UIGestureRecognizer) {
    }
}

let arView = ARSCNView()
arView.debugOptions = [.showPhysicsShapes]
arView.autoenablesDefaultLighting = true
arView.automaticallyUpdatesLighting = true

let delegate = ARDelegate()
arView.delegate = delegate

arView.scene = SCNScene()

let config = ARWorldTrackingConfiguration()
config.planeDetection = ARWorldTrackingConfiguration.PlaneDetection.horizontal
arView.session.run(config, options: [])

let gesture = UITapGestureRecognizer(target: delegate, action: #selector(ARDelegate.didTapView))
arView.addGestureRecognizer(gesture)

import PlaygroundSupport
PlaygroundPage.current.liveView = arView
