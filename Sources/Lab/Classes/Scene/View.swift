import UIKit

public protocol ViewAppearanceModifier {
    func configureAppearance()
    func setupListeners()
    func setupLayout()
}

public extension ViewAppearanceModifier {
    func setupListeners() { }
    func setupLayout()    { }
}

open class SceneView: UIView, ViewAppearanceModifier {

    override public init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
        setupLayout()
        setupListeners()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func setupLayout()          { }
    open func setupListeners()       { }
    open func configureAppearance()  { }
}
