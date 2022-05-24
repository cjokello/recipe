//
//  FavouritesView.swift
//  RecipeApp
//
//  Created by Admin on 04/05/2022.
//

import SwiftUI

struct FavouritesView: View {
    var body: some View {
        NavigationView {
            Text("Favourite recipes")
                .navigationTitle("Favourites")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
