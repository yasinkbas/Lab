//
//  Layout.swift
//  Lab
//
//  Created by Yasin Akbaş on 27.03.2020.
//

import Foundation

public protocol LayoutPolicy {}

extension LayoutPolicy where Self: UIView {
    public var safeArea: UILayoutGuide { return layoutMarginsGuide }
}
