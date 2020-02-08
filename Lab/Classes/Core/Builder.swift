//
//  Builder.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol BuilderProtocol: Component {
    associatedtype T: ViewModel
    associatedtype U: ViewController<T,V>
    associatedtype V: View
    func build() -> U
}

open class Builder<
    T: ViewModel,
    V: View,
    U: ViewController<T,V>>
: BuilderProtocol {
    
    public init() {
        setListeners()
    }
    
    open func build() -> U {
        fatalError("Must override build function")
    }
    
    open func setListeners() { }
}
