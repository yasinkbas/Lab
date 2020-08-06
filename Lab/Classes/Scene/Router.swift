import UIKit

class SceneRouter: NSObject {
    func route<T: TransitionStyle>(_ viewController: UIViewController?, to: UIViewController, presentationStyle: T) {
        presentationStyle.start(from: viewController, to: to)
    }
}
