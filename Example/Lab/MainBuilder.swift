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
    VM: ViewModel,
    V: MainView,
    VC: MainViewController<VM,V>
>: Builder<MainViewLayout,VM,V,VC> {
    
    override func build() -> VC {
        return MainViewController(view: MainView(), viewModel: nil) as! VC 
    }
}
