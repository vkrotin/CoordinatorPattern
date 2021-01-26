//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 22.01.2021.
//

import Foundation
import UIKit

typealias CoordinatorHandler = (Any?) -> ()

protocol Coordinator : RoutePresenter  {
    func start()
}

protocol FlowController {
    
    associatedtype T
    var completionHandler: ((T) -> ())? {get set}
    
}


