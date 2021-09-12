//
//  TabViewSCreenViewModel.swift
//  AppSUI
//
//  Created by Bolyachev Rostislav on 8/31/21.
//

import Foundation

final class TabViewSCreenViewModel: ObservableObject {
    @Published var catalogViewModel = CatalogScreenViewModel()
    @Published var isShowModal = false
    @Published var selectionTab = 0
    
    var openScreenTitleButton: String {
        "Show " + openScreenTitle + " " + openScreenSubtitle
    }
    
    private let openScreenTitle = "Mac Pro"
    private let openScreenSubtitle = "Gen 3"
    
    func opencreen() {
        if let openIndex = catalogViewModel.catalog.firstIndex(where: { model in
            model.title == openScreenTitle && model.subTitle == openScreenSubtitle
        }) {
            catalogViewModel.catalog[openIndex].isActive = true
            selectionTab = 1
        }
    }
}
