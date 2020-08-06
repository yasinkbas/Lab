import UIKit

open class SceneViewController<
    View: SceneView,
    Router: SceneRouter
>: UIViewController {
    public var v: View? { view as? View }
    
    public var router: Router?
    
    // MARK: - Initialize
    
    public init(view: View) {
        super.init(nibName: nil, bundle: nil)
        self.view = view
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    open func configureAppearance() { }
    open func setupListeners() { }
    
    open func setup() {
        configureAppearance()
        setupListeners()
    }
    
    // MARK: - Overrides
    
    open override func present(
        _ viewControllerToPresent: UIViewController,
        animated flag: Bool,
        completion: (() -> Void)? = nil
    ) {
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        super.present(viewControllerToPresent, animated: flag, completion: completion)
    }
    
    // MARK:- Hiding Keyboard
    
    public var isHideKeyboardWhenTapped: Bool = false {
        didSet {
            isHideKeyboardWhenTapped ? hideKeyboardWhenTapped() : nil
        }
    }
    
    private func hideKeyboardWhenTapped() {
        if isHideKeyboardWhenTapped {
            let tap = UITapGestureRecognizer(target: self, action: #selector(tappedOnView))
            v?.addGestureRecognizer(tap)
        }
    }

    @objc
    private func tappedOnView() {
        v?.endEditing(true)
    }
}

// MARK: - Alert
extension SceneViewController {
    public enum AlertActionType {
        public typealias SceneHandler = ((UIAlertAction) -> ())
        case ok(SceneHandler? = nil)
        case cancel(SceneHandler? = nil)
        
        var handler: SceneHandler?                  { value.handler }
        var title: String                           { value.title }
        var actionStyle: UIAlertAction.Style        { value.style }
        
        private var value: (title: String, handler: SceneHandler?, style: UIAlertAction.Style) {
            switch self {
            case let .ok(handler): return ("Ok", handler, .default)
            case let .cancel(handler): return ("Cancel", handler, .cancel)
            }
        }
    }
    
    
    public func alert(title: String, message: String, actions: [AlertActionType]) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach {
            alertController.addAction(UIAlertAction(title: $0.title, style: $0.actionStyle, handler: $0.handler))
        }
        present(alertController, animated: true)
    }
}
