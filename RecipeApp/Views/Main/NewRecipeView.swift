import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe manually"){
                showAddRecipe.toggle()
            }
            .navigationTitle("New Recipe")
        }
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
