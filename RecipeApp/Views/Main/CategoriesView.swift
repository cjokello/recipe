//
//  CategoriesView.swift
//  RecipeApp
//
//  Created by Admin on 04/05/2022.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases){ category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue)
                    }
                }
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
