//
//  MainCoordinator.swift
//  TheMoviesDB
//
//  Created by Dimitris Papaioannou on 17/3/20.
//  Copyright © 2020 papadim. All rights reserved.
//

import UIKit

struct Storyboard {
    static let main = "Main"
}

class MainCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = MainViewController.instantiate(storyboardName: Storyboard.main)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: false)
    }
    
}
