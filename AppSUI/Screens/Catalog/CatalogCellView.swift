//
//  CatalogCellView.swift
//  AppSUI
//
//  Created by Bolyachev Rostislav on 8/31/21.
//

import SwiftUI

struct CatalogCellView: View {
    let model: CatalogModel
    
    var body: some View {
        HStack {
            Image(systemName: model.iconName)
                .resizable()
                .frame(width: 50, height: 50)
            VStack {
                Text(model.title)
                    .font(.title3)
                if !model.subTitle.isEmpty {
                    Text(model.subTitle)
                        .font(.body)
                }
            }
        }
    }
}

struct CatalogCellView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogCellView(model: CatalogModel(iconName: "printer", title: "Printer", subTitle: "123"))
    }
}
