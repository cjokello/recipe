import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    var category: Category
    
    // this is a computed property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationTitle(category.rawValue)
    }
}
