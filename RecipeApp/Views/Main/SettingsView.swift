//
//  SettingsView.swift
//  RecipeApp
//
//  Created by Admin on 04/05/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("Settings View")
                .navigationTitle("Settings View")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
