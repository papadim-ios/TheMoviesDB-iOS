//
//  Coordinator.swift
//  TheMoviesDB
//
//  Created by Dimitris Papaioannou on 17/3/20.
//  Copyright © 2020 papadim. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
