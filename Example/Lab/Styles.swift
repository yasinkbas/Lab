//
//  Styles.swift
//  Lab_Example
//
//  Created by Yasin Akbaş on 6.04.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Lab

enum ButtonStyle: Style {
    typealias T = UIButton
    
    case yellowButton
    case redButton
    
    static func make(view: UIButton, styles: [ButtonStyle]) -> UIButton {
        styles.forEach {
            switch $0 {
            case .yellowButton:
                view.backgroundColor = .yellow
            case .redButton:
                view.backgroundColor = .red
            }
        }
        return view
    }
}

enum ViewStyle: Style {
    typealias T = UIView
    
    case yellowView
    case cornerable(radius: CGFloat)
    
    static func make(view: UIView, styles: [ViewStyle]) -> UIView {
        styles.forEach {
            switch $0 {
            case .yellowView:
                view.backgroundColor = .yellow
            case .cornerable(let radius):
                view.layer.cornerRadius = radius
            }
        }
        return view
    }
}
