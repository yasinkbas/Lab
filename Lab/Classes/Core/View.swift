//
//  View.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol ViewProtocol: Component {
    func configureAppearance()
    func setViews()
}

open class View: UIView, ViewProtocol {
    override public init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
        setViews()
        setListeners()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configureAppearance() { }
    open func setViews() { }
    open func setListeners() { }
}
