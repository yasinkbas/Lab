import UIKit

protocol TransitionStyle {
    func start(from firstViewController: UIViewController?, to secondViewController: UIViewController)
}

protocol Transition {
    associatedtype PresentationStyle: TransitionStyle
    
}

class SimpleTransition: Transition {
    enum PresentationStyle: TransitionStyle {
        case show
        case toRight
        case toLeft
        
        func start(from firstViewController: UIViewController?, to secondViewController: UIViewController) {
            switch self {
            case .show:
                firstViewController?.present(secondViewController, animated: true, completion: nil)
            case .toRight:
                swipeTransit(viewController: firstViewController, to: secondViewController, type: .push, subtype: .fromLeft)
            case .toLeft:
                swipeTransit(viewController: firstViewController, to: secondViewController, type: .push, subtype: .fromRight)
            }
        }
    }
    
    static func swipeTransit(
        viewController: UIViewController?,
        to: UIViewController,
        type: CATransitionType,
        subtype: CATransitionSubtype
    ) {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = type
        transition.subtype = subtype
        transition.timingFunction = CAMediaTimingFunction(name: .easeOut)
        viewController?.view.window!.layer.add(transition, forKey: kCATransition)
        viewController?.present(to, animated: false, completion: nil)
    }
}
