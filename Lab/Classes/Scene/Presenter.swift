import UIKit

open class ScenePresenter<
    View: SceneView,
    Router: SceneRouter,
    ViewController: SceneViewController<View, Router>
> {
    public weak var viewController: ViewController?
}
