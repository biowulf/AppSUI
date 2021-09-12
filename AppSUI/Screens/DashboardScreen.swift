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
            viewModel.opencreen()
        }, label: {
            Text(viewModel.openScreenTitleButton)
        })
    }
    
}
