//
//  View.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

protocol ViewProtocol: Component {
    func configureAppearance()
    func setViews()
}

class View: UIView, ViewProtocol {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAppearance()
        setViews()
        setListeners()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureAppearance() { }
    func setViews() { }
    func setListeners() { }
}
