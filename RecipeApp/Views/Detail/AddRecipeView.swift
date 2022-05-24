import SwiftUI

struct AddRecipeView: View {
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var navigateToRecipe = false
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("name")){
                    TextField("Recipe Name", text: $name)
                }
                
                Section(header: Text("category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases, id: \.self){ category in
                            Text(category.rawValue)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("description")){
                    TextEditor(text: $description)
                }
                
                Section(header: Text("ingredients")){
                    TextEditor(text: $ingredients)
                }
                
                Section(header: Text("directions")){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading){
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem {
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe.toggle()
                        } label: {
                            Label("Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)
                    }  
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe() {
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: selectedCategory.rawValue, datePublished: datePublished, url: "")
        
        recipesVM.addRecipe(recipe: recipe)
    }
}
