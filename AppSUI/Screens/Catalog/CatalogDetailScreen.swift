//
//  CatalogDetailScreen.swift
//  AppSUI
//
//  Created by Bolyachev Rostislav on 8/31/21.
//

import SwiftUI

struct CatalogDetailScreen: View {
    let model: CatalogModel
    
    var body: some View {
        VStack {
            Image(systemName: model.iconName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(model.title)
                .font(.title)
            Text(model.subTitle)
                .font(.headline)
            Spacer()
        }
    }
}

struct CatalogDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CatalogDetailScreen(model: CatalogModel(iconName: "printer", title: "Printer", subTitle: "123"))
    }
}
