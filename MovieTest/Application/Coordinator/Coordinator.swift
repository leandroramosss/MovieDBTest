//
//  Coordinator.swift
//  MovieTest
//
//  Created by Leandro Ramos on 8/13/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}

//class Coordinator {
//    
//    private let window: UIWindow
//    
//    init(window: UIWindow) {
//        self.window = window
//    }
//    
//    func start() {
//        let controller = MovieDetailViewController()
//        let navigationController = UINavigationController(rootViewController: controller)
//        window.rootViewController = navigationController
//        window.makeKeyAndVisible()
//    }
//}
