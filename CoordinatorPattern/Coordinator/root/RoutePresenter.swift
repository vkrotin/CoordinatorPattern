//
//  RoutePresenter.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 22.01.2021.
//

import Foundation
import UIKit

protocol RoutePresenter : class {
    var presenter: UINavigationController? {get set}
    
    func present(controller: UIViewController, animated: Bool)
    func push(controller: UIViewController, animated: Bool)
    func popController(controller: UIViewController, animated: Bool)
    func dismissController(animated: Bool)
}

extension RoutePresenter {
    
    func present(controller: UIViewController, animated: Bool) {
        presenter?.present(controller, animated: animated, completion: nil)
    }
    
    func push(controller: UIViewController, animated: Bool) {
        presenter?.pushViewController(controller, animated: animated)
    }
    
    func popController(controller: UIViewController, animated: Bool) {
        presenter?.popViewController(animated: animated)
    }
    
    func dismissController(animated: Bool) {
        presenter?.dismiss(animated: true, completion: nil)
    }
}

extension UINavigationController {
    
    func set(root controller: UIViewController, animated: Bool) {
        self.setViewControllers([controller], animated: animated)
    }
    
}
