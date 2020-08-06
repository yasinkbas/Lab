import UIKit

class ScenePresenter<
    View: SceneView,
    Router: SceneRouter,
    ViewController: SceneViewController<View, Router>
> {
    weak var viewController: ViewController?
}
