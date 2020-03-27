//
//  View.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol ViewProtocol: ComponentPolicy {
    associatedtype Layout = LayoutPolicy
    var layout: Layout { get }
    
    func preConfigureAppearance()
    func configureAppearance()
    func setViews()
}

open class View<Layout: LayoutPolicy>: UIView, ViewProtocol {
    public var layout: Layout {
        return Layout(self)
    }
    
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        preConfigureAppearance()
        configureAppearance()
        setViews()
        setListeners()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func preConfigureAppearance() {
        backgroundColor = .white
    }
    
    open func configureAppearance() { }
    open func setViews() { }
    open func setListeners() { }
}
