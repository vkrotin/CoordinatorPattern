//
//  CreateAccountViewController.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 22.01.2021.
//

import UIKit

class CreateAccountViewController: UIViewController, Storyboarded {

    weak var coordinator: MainCoordinator?
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func doneButtonTouch(_ sender: Any) {
        coordinator?.flowCompletionHandler?(textField.text)
    }
}
