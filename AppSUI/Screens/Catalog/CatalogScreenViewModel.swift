//
//  CatalogScreenViewModel.swift
//  AppSUI
//
//  Created by Bolyachev Rostislav on 8/31/21.
//

import Foundation

final class CatalogScreenViewModel: ObservableObject {
    @Published var catalog: [CatalogModel] = [
        CatalogModel(iconName: "printer", title: "Printer", subTitle: ""),
        CatalogModel(iconName: "scanner", title: "Scaner", subTitle: ""),
        CatalogModel(iconName: "tv", title: "TV", subTitle: ""),
        CatalogModel(iconName: "macpro.gen1", title: "Mac Pro", subTitle: "Gen 1"),
        CatalogModel(iconName: "macpro.gen3", title: "Mac Pro", subTitle: "Gen 3"),
        CatalogModel(iconName: "macpro.gen2", title: "Mac Pro", subTitle: "Gen 2"),
        CatalogModel(iconName: "laptopcomputer", title: "Macbook", subTitle: ""),
        CatalogModel(iconName: "iphone.homebutton", title: "iPhone", subTitle: ""),
        CatalogModel(iconName: "ipad.homebutton", title: "iPad", subTitle: "with Button"),
        CatalogModel(iconName: "ipad", title: "iPad", subTitle: ""),
        ]
}
