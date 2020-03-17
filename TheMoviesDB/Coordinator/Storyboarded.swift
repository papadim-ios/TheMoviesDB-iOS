//
//  Storyboarded.swift
//  TheMoviesDB
//
//  Created by Dimitris Papaioannou on 17/3/20.
//  Copyright © 2020 papadim. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate(storyboardName: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(storyboardName: String) -> Self {
        
        // This pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)

        // This splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]

        // Load our storyboard
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle.main)

        // Instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
