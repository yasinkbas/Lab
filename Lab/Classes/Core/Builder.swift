//
//  Builder.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol BuilderProtocol: Component {
    associatedtype VM: ViewModel
    associatedtype VC: ViewController<VM,V>
    associatedtype V: View
    func build() -> VC
}

open class Builder<
    VM: ViewModel,
    V: View,
    VC: ViewController<VM,V>
>: BuilderProtocol {
    
    public init() {
        setListeners()
    }
    
    open func build() -> VC {
        fatalError("Must override build function")
    }
    
    open func setListeners() { }
}
