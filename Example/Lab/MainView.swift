//
//  MainView.swift
//  Lab_Example
//
//  Created by Yasin Akbaş on 8.02.2020.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Lab

class MainView: View {
    
    override func setViews() {
        setYellowView()
    }
    
    private func setYellowView() {
        let yellowView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 200))
        yellowView.backgroundColor = UIColor.yellow
        addSubview(yellowView)
        print("works 1")
        print(frame)
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        yellowView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        yellowView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        yellowView.heightAnchor.constraint(equalToConstant: 80).isActive = true
    }
    
    override func configureAppearance() {
        backgroundColor = .gray
    }
}
