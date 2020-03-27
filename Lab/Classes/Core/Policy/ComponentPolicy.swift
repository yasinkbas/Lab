//
//  ComponentPolicy.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import Foundation

public protocol ComponentPolicy: class {
    func setListeners()
    func setDelegate(_ delegate: inout AnyObject)
}

extension ComponentPolicy {
    public func setDelegate(_ delegate: inout AnyObject) {
        delegate = self
    }
}
