//
//  SignUpViewModel.swift
//  Real Estate App
//
//  Created by arifashraf on 16/12/21.
//

import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    
    //SignUp Field Properties
    @Published var agencyName: String = ""
    @Published var agencyAddress: String = ""
    @Published var city: String = ""
    @Published var state: String = ""
    @Published var zipCode: String = ""
    @Published var businessType: String = ""
    @Published var dealsType: String = ""
    @Published var businessLocation: String = ""
    @Published var dealingStatus: String = ""
    @Published var numberOfEmployees: String = ""
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var isSignUpValid: Bool = false
    @Published var shouldShowSignUpAlert: Bool = false
    
}
