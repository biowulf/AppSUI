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
}
