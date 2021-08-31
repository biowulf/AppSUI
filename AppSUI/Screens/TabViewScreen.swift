//
//  TabViewScreen.swift
//  AppSUI
//
//  Created by exey on 26.08.2021.
//

import SwiftUI

struct TabViewScreen: View {
    
    @EnvironmentObject var viewModel: TabViewSCreenViewModel
    
    var body: some View {
        TabView(selection: $viewModel.selectionTab) {
            DashboardScreen()
                .tabItem {
                    Text("Start")
                    Image(systemName: "star")
                }
                .tag(0)
            CatalogScreen(viewModel: viewModel.catalogViewModel)
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Catalog")
                }
                .tag(1)
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var viewModel = TabViewSCreenViewModel()
    static var previews: some View {
        TabViewScreen()
            .environmentObject(viewModel)
    }
}
