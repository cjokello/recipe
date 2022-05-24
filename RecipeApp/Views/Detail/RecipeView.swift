import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .foregroundColor(.white.opacity(0.7))
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: 300)
            .clipped()
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    } else {
                        Text("No description")
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingredients")
                            .font(.headline)
                        
                        Text(recipe.ingredients)
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Directions")
                            .font(.headline)
                        
                        Text(recipe.directions)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
        }
        .frame(maxWidth: .infinity)
        .clipped()
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[1])
    }
}
