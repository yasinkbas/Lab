import UIKit

public protocol TableViewMixin: UIView {
    associatedtype TableView: UITableView
   
    var tableView: TableView    { get set }
    var cellHeight: CGFloat     { get }
}

extension SceneViewController where View: TableViewMixin {
    @nonobjc
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return v!.cellHeight
    }
}
