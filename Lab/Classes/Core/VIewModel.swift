//
//  VIewModel.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import Foundation

public protocol ViewModelProtocol: Component { }

open class ViewModel: ViewModelProtocol {
    
    public init() {
        setListeners()
    }
    
    open func setListeners() { }
}
