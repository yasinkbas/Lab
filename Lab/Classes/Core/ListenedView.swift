//
//  Delegate.swift
//  Lab
//
//  Created by Yasin Akbaş on 27.03.2020.
//

import Foundation

public protocol Delegate: class { }

public protocol Listened: Delegate {
    associatedtype _Delegate = Delegate
    var delegate: _Delegate? { get set }
}


class ListenedView<Layout: LayoutPolicy, T: Any>: View<Layout>, Listened {
    var delegate: T?
    
    public init(frame: CGRect = .zero, delegate: T? = nil) {
        super.init(frame: frame)
        self.delegate = delegate
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
