import UIKit
public struct ImageIterator: IteratorProtocol {
    public typealias Element = UIImage
    var number = 1
    public init() {

    }

    public mutating func next() -> UIImage? {
        let image = UIImage(named: "\(number)ball.jpg")
        number += 1
        if number > 15 {
            number = 1
        }
        return image
    }
}
