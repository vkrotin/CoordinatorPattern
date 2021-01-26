//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 22.01.2021.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var presenter: UINavigationController?
    var storage: Storage
    var flowCompletionHandler: CoordinatorHandler?
    var childCoordinators = [Coordinator]()
    var rootController: MainViewController?
    
    
    init(_ navigationController: UINavigationController?, _ storage: Storage) {
        self.presenter = navigationController
        self.storage = storage
    }
    
    func start() {
        rootController = MainViewController.instantiate()
        rootController?.coordinator = self
        presenter?.set(root: rootController!, animated: false)
    }
    
}

