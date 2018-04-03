import UIKit
import ARKit


class ARDelegate: NSObject, ARSKViewDelegate {
    @objc func didTapView(sender: UIGestureRecognizer) {
    }
}

let arView = ARSKView()

let delegate = ARDelegate()
arView.delegate = delegate

let scene = SKScene(size: CGSize(width: 512, height: 768))
arView.presentScene(scene)

let config = ARWorldTrackingConfiguration()
config.planeDetection = ARWorldTrackingConfiguration.PlaneDetection.horizontal
arView.session.run(config, options: [])

let gesture = UITapGestureRecognizer(target: delegate, action: #selector(ARDelegate.didTapView))
arView.addGestureRecognizer(gesture)

import PlaygroundSupport
PlaygroundPage.current.liveView = arView


