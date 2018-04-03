import SceneKit

public extension SCNVector3 {
    init(float4: simd_float4) {
        self.x = float4.x
        self.y = float4.y
        self.z = float4.z
    }

    func inverse() -> SCNVector3 {
        return SCNVector3(x: -x, y: -y, z: -z)
    }

    func multiply(factor: Float) -> SCNVector3 {
        return SCNVector3(x: x*factor, y:y*factor, z: z*factor)
    }
}
