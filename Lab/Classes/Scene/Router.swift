import UIKit

open class SceneRouter: NSObject {
    open func route<T: TransitionStyle>(_ viewController: UIViewController?, to: UIViewController, presentationStyle: T) {
        presentationStyle.start(from: viewController, to: to)
    }
}
