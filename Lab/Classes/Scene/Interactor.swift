import UIKit

class SceneInteractor<
    View: SceneView,
    Router: SceneRouter,
    ViewController: SceneViewController<View, Router>,
    Presenter: ScenePresenter<View, Router, ViewController>
> {
    var presenter: Presenter?
    
    init() {
        setupWorkers()
    }
    
    func setupWorkers() { }
}
