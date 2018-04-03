import UIKit

// TapGesture

public class TapGesture: NSObject {
    let closure: ()-> Void
    public init(on view: UIView
        ,closure: @escaping ()-> Void) {
        self.closure = closure
        super.init()
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(action(_:))))
    }
    @objc func action(_ sender: AnyObject) { closure() }
}

