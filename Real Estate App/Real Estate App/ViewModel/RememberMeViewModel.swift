//
//  RememberMeViewModel.swift
//  Real Estate App
//
//  Created by arifashraf on 21/12/21.
//
import SwiftUI

class RememberMeViewModel: ObservableObject {
    
    @Published var checkState: Bool = false ;
    @Published var savedUsername = ""
    @Published var savedPassword = ""
    @ObservedObject var loginVM = LoginViewModel()
    
    func saveData(){
        
        if checkState {
            UserDefaults.standard.set(loginVM.email, forKey: "email")
            UserDefaults.standard.set(loginVM.password, forKey: "password")
            print("saved Data")
        } else {
            print("Couldnt save")
        }
    }
    
    func getData(){
        savedUsername = UserDefaults.standard.string(forKey: "email") ?? ""
        savedPassword = UserDefaults.standard.string(forKey: "password") ?? ""
        
        loginVM.email = savedUsername
        loginVM.password = savedPassword
        
        print("Get Data: \(loginVM.email) \(loginVM.password)")
        
    }
}
