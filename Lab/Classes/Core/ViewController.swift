//
//  ViewController.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

public protocol ViewControllerProtocol: ComponentPolicy {
    associatedtype V: View<Layout>
    associatedtype VM: ViewModel
    associatedtype Layout: LayoutPolicy
    
    var v: V? { get }
    var viewModel: VM? { get set }
    
    func customizeAppearance()
    func setView(_ view: V?)
    func setNavigationController()
}

open class ViewController<
    Layout: LayoutPolicy,
    VM: ViewModel,
    V: View<Layout>
>: UIViewController, ViewControllerProtocol {
    public var v: V? {
        return self.view as? V
    }
    open var viewModel: VM?
    
    public init(view: V?, viewModel: VM?) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
        setView(view)
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
    
    open func setView(_ view: V?) {
        self.view = view
    }
    
    open func customizeAppearance() { }
    open func setNavigationController() { }
    open func setListeners() { }
}
