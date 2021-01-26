//
//  BuyViewController.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 22.01.2021.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func appendButtonTouch(_ sender: Any) {
        coordinator?.flowCompletionHandler?(textField.text)
    }
}
