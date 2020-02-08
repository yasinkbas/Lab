//
//  MainBuilder.swift
//  Lab_Example
//
//  Created by Yasin Akbaş on 8.02.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Lab
import UIKit

class MainBuilder<
    T: ViewModel,
    V: MainView,
    U: MainViewController<T,V>
>: Builder<T,V,U> {
    
    override func build() -> U {
        return MainViewController(view: MainView(), viewModel: nil) as! U
    }
}
