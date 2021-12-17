//
//  WelcomeView.swift
//  Real Estate App
//
//  Created by arifashraf on 15/12/21.
//

import SwiftUI

struct WelcomeView: View {
    @State var show = false
    var body: some View {
        NavigationLink(destination: HomeView(), isActive: $show, label: {
            Text("Congratulations! Your registration is complete")
        })
            .foregroundColor(.black)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.show.toggle()
                }
            }
            .navigationBarBackButtonHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
