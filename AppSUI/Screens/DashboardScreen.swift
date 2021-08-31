//
//  DashboardScreen.swift
//  AppSUI
//
//  Created by exey on 26.08.2021.
//

import SwiftUI

struct DashboardScreen: View {

    @EnvironmentObject var viewModel: TabViewSCreenViewModel
    
    var body: some View {
        Button(action: {
            viewModel.catalogViewModel.isShow[4] = true
            viewModel.selectionTab = 1
        }, label: {
            Text("Show Mac Pro Gen 3")
        })
    }
    
}
