//
//  CheckBoxFieldView.swift
//  Real Estate App
//
//  Created by arifashraf on 16/12/21.
//
import SwiftUI

struct RememberMeView: View {

    @ObservedObject var rememberMeVM = RememberMeViewModel()
    
    var body: some View {
        
        Button(action:
                {
            //1. Save state
            rememberMeVM.checkState = !rememberMeVM.checkState
            print("State : \(rememberMeVM.checkState)")
        }) {
            
            HStack(alignment: .top, spacing: 10) {
                
                //2. Will update according to state
                Rectangle()
                    .fill(rememberMeVM.checkState ? Color.secondary : Color.white)
                    .background(rememberMeVM.checkState ? Image(systemName: "checkmark") : Image(systemName: "square.fill"))
                    .frame(width:20, height:20, alignment: .center)
                    .cornerRadius(5)
                    .border(.gray)
                Text("Remember Me")
                    .foregroundColor(.gray)
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
}




