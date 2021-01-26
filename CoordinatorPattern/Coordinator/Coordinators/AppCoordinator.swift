//
//  AppCoordinator.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 26.01.2021.
//

import UIKit


class AppCoordinator: Coordinator {
    
    let window: UIWindow?
    var presenter: UINavigationController?
    
    let mainCoordinator: MainCoordinator
    let storage: Storage
  
  init(_ window: UIWindow?) {
    self.window = window
    presenter = UINavigationController()
    presenter?.navigationBar.prefersLargeTitles = true
    presenter?.navigationBar.barStyle = .default
    
    storage = Storage()
    
    mainCoordinator = MainCoordinator(presenter, storage)
  }
  
  func start() {
    window?.rootViewController = presenter
    mainCoordinator.start()
    window?.makeKeyAndVisible()
  }
}
