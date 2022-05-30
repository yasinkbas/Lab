import UIKit

open class SceneInteractor<
    View: SceneView,
    Router: SceneRouter,
    ViewController: SceneViewController<View, Router>,
    Presenter: ScenePresenter<View, Router, ViewController>
> {
    public var presenter: Presenter?
    
    public init() {
        setupWorkers()
    }
    
    open func setupWorkers() { }
}
