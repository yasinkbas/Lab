//
//  StyleConveniences.swift
//  Lab_Example
//
//  Created by Yasin Akbaş on 7.04.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

infix operator -->: LogicalDisjunctionPrecedence

extension UIButton {
    static func -->(lhs: UIButton, rhs: [ButtonStyle]) -> UIButton {
        return ButtonStyle.make(view: lhs, styles: rhs)
    }
}

extension UIView {
    static func -->(lhs: UIView, rhs: [ViewStyle]) -> UIView {
        return ViewStyle.make(view: lhs, styles: rhs)
    }
}
