class Sphere: SCNNode{
    let sphere: SCNSphere
    let radius: Float = 0.025
    override init() {
        self.sphere = SCNSphere(radius: CGFloat(radius))
        sphere.materials = [material(for: #colorLiteral(red: 0.745098054409027, green: 0.156862750649452, blue: 0.0745098069310188, alpha: 1.0))]
        super.init()
        self.geometry = sphere
        let shape = SCNPhysicsShape(geometry: sphere, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: shape)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func position(at transform: matrix_float4x4) {
        position = SCNVector3(float4: transform.columns.3)
    }
}
