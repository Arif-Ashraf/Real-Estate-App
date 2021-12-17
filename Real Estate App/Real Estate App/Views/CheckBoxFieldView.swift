//
//  CheckBoxFieldView.swift
//  Real Estate App
//
//  Created by arifashraf on 16/12/21.
//
import SwiftUI

struct CheckboxFieldView: View {
    
    @State var checkState: Bool = false ;
    
    var body: some View {
        
        Button(action:
                {
            //1. Save state
            self.checkState = !self.checkState
            print("State : \(self.checkState)")
        }) {
            
            HStack(alignment: .top, spacing: 10) {
                
                //2. Will update according to state
                Rectangle()
                    .fill(self.checkState ? Color.secondary : Color.white)
                    .frame(width:20, height:20, alignment: .center)
                    .cornerRadius(5)
                    .border(.gray)
                
                Text("Remember Me")
                
            }
        }
        .padding()
        .foregroundColor(Color.gray)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
    
}
