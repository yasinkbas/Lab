//
//  Layout.swift
//  Lab
//
//  Created by Yasin Akbaş on 27.03.2020.
//

import Foundation

public protocol LayoutPolicy {
    var safeArea: UILayoutGuide { get }
    var view: UIView { get set }
    
    init(_ view: UIView)
    
}

extension LayoutPolicy {
    public var view: UIView {
        return UIView()
    }
    
    public var safeArea: UILayoutGuide {
        return view.layoutMarginsGuide
    }
}

extension LayoutPolicy where Self: UIView {
    var safeArea: UILayoutGuide { return layoutMarginsGuide }
}

public struct DefaultLayout: LayoutPolicy {
    public var view: UIView
    
    public init(_ view: UIView) {
        self.view = view
    }
}

