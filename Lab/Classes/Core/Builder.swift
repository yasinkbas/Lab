//
//  Builder.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol BuilderProtocol: ComponentPolicy {
    associatedtype Layout: LayoutPolicy
    associatedtype VM: ViewModel
    associatedtype VC: ViewController<Layout,VM,V>
    associatedtype V: View<Layout>
    func build() -> VC
}

open class Builder<
    Layout: LayoutPolicy,
    VM: ViewModel,
    V: View<Layout>,
    VC: ViewController<Layout,VM,V>
>: BuilderProtocol {
    
    public init() {
        setListeners()
    }
    
    open func build() -> VC {
        fatalError("Must override build function")
    }
    
    open func setListeners() { }
}
