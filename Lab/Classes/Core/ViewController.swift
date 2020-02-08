//
//  ViewController.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol ViewControllerProtocol: Component {
    associatedtype U: ViewModel
    associatedtype T: View
    var v: T? { get set }
    var viewModel: U? { get set }
    func customizeAppearance()
    func setView(_ view: T)
    func setNavigationController()
}

open class ViewController<U: ViewModel, T: View>: UIViewController, ViewControllerProtocol {
    public var v: T? {
        get {
            return self.view as? T
        }
        set {
            self.view = newValue
        }
    }
    open var viewModel: U?
    
    public init(view: T?, viewModel: U?) {
        super.init(nibName: nil, bundle: nil)
        customInit()
    }
    
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        customInit()
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        customInit()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init?(coder:) has not been implemented")
    }
    
    private func customInit() { }
    
    override open func loadView() {
        super.loadView()
        customizeAppearance()
    }
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        setListeners()
    }
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigationController()
    }
    
    open func customizeAppearance() {
        v = T()
    }
        
    open func setView(_ view: T) {
        self.view = view
    }
    
    open func setNavigationController() { }
    open func setListeners() { }
}

