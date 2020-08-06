import UIKit

protocol ViewAppearanceModifier {
    func configureAppearance()
    func setupListeners()
    func setupLayout()
}

extension ViewAppearanceModifier {
    func setupListeners() { }
    func setupLayout()    { }
}

class SceneView: UIView, ViewAppearanceModifier {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
        setupLayout()
        setupListeners()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout()          { }
    func setupListeners()       { }
    func configureAppearance()  { }
}
