//
//  AppSUIApp.swift
//  AppSUI
//
//  Created by exey on 26.08.2021.
//

import SwiftUI

@main
struct AppSUIApp: App {
    @StateObject var viewModel = TabViewSCreenViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabViewScreen()
                .environmentObject(viewModel)
        }
    }
}
