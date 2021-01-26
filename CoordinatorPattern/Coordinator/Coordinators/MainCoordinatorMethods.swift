//
//  MainCoordinatorMethods.swift
//  CoordinatorPattern
//
//  Created by  vkrotin on 26.01.2021.
//

import Foundation


//MARK: Use controllers (GET Methods)

protocol GenerateMethods {
    func buySubsription()
    func createSubsription()
}

extension MainCoordinator : GenerateMethods {
    
    func buySubsription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        vc.coordinator?.flowCompletionHandler = { [weak self] name in
            self?.setCase(.toBuy, value: name as? String)
            self?.popController(controller: vc, animated: true)
        }
        push(controller: vc, animated: true)
    }
    
    func createSubsription() {
        let vc = CreateAccountViewController.instantiate()
        vc.coordinator = self
        vc.coordinator?.flowCompletionHandler = { [weak self] name in
            self?.setCase(.accunt, value: name as? String)
            self?.popController(controller: vc, animated: true)
        }
        push(controller: vc, animated: true)
    }
    
}

//MARK: Methods For controllers (SET Methods)

enum CaseType {
    case toBuy, accunt
}

protocol AppendMethods {
    func setCase(_ type: CaseType, value: String?)
}

extension MainCoordinator : AppendMethods {
    
    func setCase(_ type: CaseType, value: String?) {
        
        let stValue = value?.isEmpty ?? false ? "---" : value
        
        switch type {
        case .toBuy:
            rootController?.toBuyLabel.text = stValue
        case .accunt:
            rootController?.personNameLabel.text = stValue
        }
    }
    
}
