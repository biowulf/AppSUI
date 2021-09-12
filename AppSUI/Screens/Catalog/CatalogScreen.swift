//
//  CatalogScreen.swift
//  AppSUI
//
//  Created by exey on 26.08.2021.
//

import SwiftUI

struct CatalogScreen: View {
    @ObservedObject var viewModel: CatalogScreenViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.catalog) { cellModel in
                NavigationLink(
                    destination: CatalogDetailScreen(model: cellModel),
                    isActive: $viewModel.catalog[viewModel.catalog.firstIndex(where: {$0.id == cellModel.id})!].isActive,
                    label: {
                        CatalogCellView(model: cellModel)
                    })
            }
            .navigationTitle("Catalog")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogScreen(viewModel: CatalogScreenViewModel())
    }
}
