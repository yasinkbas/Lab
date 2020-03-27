//
//  MainViewController.swift
//  Lab
//
//  Created by yasinkbas on 02/08/2020.
//  Copyright (c) 2020 yasinkbas. All rights reserved.
//

import UIKit
import Lab

class MainViewController<
    VM:ViewModel,
    V:MainView
>: ViewController<MainViewLayout, VM, V> { }
