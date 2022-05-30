import UIKit

public protocol SceneBuilder: SceneRoutable {
    associatedtype Buildable:   SceneBuildable
    associatedtype ViewRequest: SceneViewRequest
    
    func setup(with viewRequest: ViewRequest) -> Buildable
}

