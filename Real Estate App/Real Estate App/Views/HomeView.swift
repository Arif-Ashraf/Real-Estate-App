//
//  HomeView.swift
//  Real Estate App
//
//  Created by arifashraf on 14/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Home View")
            .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 11")
        
    }
}


