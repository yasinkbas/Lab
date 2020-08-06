import UIKit

public protocol SceneBuilder: SceneRoutable {
    associatedtype Buildable: SceneBuildable
    associatedtype Request: SceneViewRequest
    
    func setup(with request: Request) -> Buildable
}

