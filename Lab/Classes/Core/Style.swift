//
//  Style.swift
//  FBSnapshotTestCase
//
//  Created by Yasin Akbaş on 6.04.2020.
//

import Foundation

public protocol Style {
    associatedtype T: UIView
    
    @discardableResult
    static func make(view: T, styles: [Self]) -> T
}


//public enum ButtonStyle: Style {
//    public typealias T = UIButton
//}
//
//public enum TextFieldStyle: Style {
//    public typealias T = UITextField
//}
//
//public enum ViewStyle: Style {
//    public  typealias T = UIView
//}
//
//
//public extension UIButton {
//    static func -->(lhs: UIButton, rhs: [ButtonStyle]) -> UIButton {
//        return ButtonStyle.make(view: lhs, styles: rhs)
//    }
//}
//
//public extension UITextField {
//    static func -->(lhs: UITextField, rhs: [TextFieldStyle]) -> UITextField {
//        return TextFieldStyle.make(view: lhs, styles: rhs)
//    }
//}
