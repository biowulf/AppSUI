//
//  ProfileScreen.swift
//  AppSUI
//
//  Created by exey on 26.08.2021.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State var isModal: Bool = false
    @State var image: UIImage?
    
    var body: some View {
        NavigationView {
            Button(action: {
                isModal.toggle()
            }, label: {
                Text("Modal Show")
            })
            .navigationTitle("Profile")
            .sheet(isPresented: $isModal, content: {
                AppImagePicker(image: $image)
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
