//
//  LoginViewModel.swift
//  Real Estate App
//
//  Created by arifashraf on 09/12/21.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    
    //Login Field Properties
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var isLoginValid: Bool = false
    @Published var shouldShowLoginAlert: Bool = false
    
     func isEmailValid() -> Bool {
        let emailTest = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")
        return emailTest.evaluate(with: email)
    }

     func isPasswordValid() -> Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", ".{8,}")
        return passwordTest.evaluate(with: password)
    }
    
    var isLoginComplete: Bool {
        if !isEmailValid() ||
        !isPasswordValid() {
            return false
        }
        return true
    }
    
    
    //MARK: - Validation Prompt Strings
    
    var emailPrompt: String {
        if isEmailValid() {
            return ""
        } else {
            return "Enter a valid email address"
        }
    }
        
    var passwordPrompt: String {
        if isPasswordValid() {
            return ""
        } else {
            return "Must be between 8 and 15 characters containing at least one number and one capital letter"
        }
    }
    
    func clearTextFields() {
            // perform signup functions then clear fields
            email = ""
            password = ""
    }
    
}
