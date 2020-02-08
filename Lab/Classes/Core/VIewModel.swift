//
//  VIewModel.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import Foundation

protocol ViewModelProtocol: Component { }

class ViewModel: ViewModelProtocol {
    
    init() {
        setListeners()
    }
    
    func setListeners() { }
}
