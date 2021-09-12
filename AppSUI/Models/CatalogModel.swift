//
//  CatalogModel.swift
//  AppSUI
//
//  Created by Bolyachev Rostislav on 8/31/21.
//

import Foundation

struct CatalogModel: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var iconName: String
    var title: String
    var subTitle: String
    var isActive = false
}
