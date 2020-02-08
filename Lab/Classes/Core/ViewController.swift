//
//  ViewController.swift
//  GoodWeather
//
//  Created by Yasin Akbaş on 7.02.2020.
//  Copyright © 2020 Yasin Akbaş. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol: Component {
    associatedtype U: ViewModel
    associatedtype T: View
    var v: T { get set }
    var viewModel: U? { get set }
    func customizeAppearance()
    func setView(_ view: T)
    func setNavigationController()
}

class ViewController<U: ViewModel, T: View>: UIViewController, ViewControllerProtocol {
    var v: T {
        get {
            if let _ = view as? T {
                return self.view as! T
            }
            self.view = T()
            return self.view as! T
        }
        set {
            self.view = newValue
        }
    }
    var viewModel: U?
    
    init(view: T?, viewModel: U?) {
        super.init(nibName: nil, bundle: nil)
        v.backgroundColor = .white
        customInit()
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        customInit()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        customInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init?(coder:) has not been implemented")
    }
    
    private func customInit() { }
    
    override func loadView() {
        super.loadView()
        customizeAppearance()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setListeners()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNavigationController()
    }
    
    func customizeAppearance() {
        v.backgroundColor = .white
    }
        
    func setView(_ view: T) {
        self.view = view
    }
    
    func setNavigationController() { }
    func setListeners() { }
}

