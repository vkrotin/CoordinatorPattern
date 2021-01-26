//
//  MainViewController.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 22.01.2021.
//

import UIKit

class MainViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?

    @IBOutlet weak var toBuyLabel: UILabel!
    @IBOutlet weak var personNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func buyButtonTouch(_ sender: Any) {
        coordinator?.buySubsription()
    }


    @IBAction func crateTouch(_ sender: Any) {
        coordinator?.createSubsription()
    }
}

