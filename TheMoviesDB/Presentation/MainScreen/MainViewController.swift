//
//  MainViewController.swift
//  TheMoviesDB
//
//  Created by Dimitris Papaioannou on 17/3/20.
//  Copyright © 2020 papadim. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }

}

