import Foundation

// thsi Recipe struct conforms to Identifiable because each one should be
// unique
struct Recipe: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetiser = "Appetiser"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    case lunch = "Lunch"
    case dinner = "Dinner"
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Dan Dan Mian Noodles",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/25314/Dan-Dan-Mian-Noodles-WP-688x387-c.jpg",
            description: "With pickled greens, green onions, toasted sesame seeds, and chili-vinegar soy sauce, this 15-minute noodle dish bursts with the intense flavors of Szechwan cooking.",
            ingredients: "8 ounces Chinese wheat noodles, udon noodles, or soba noodles\n4 green onions, sliced\n¼ cup pickled mustard greens or pickled cabbage\n1½ teaspoons soy sauce\n2 teaspoons rice vinegar\n1 teaspoon chili paste\n1 teaspoon toasted sesame seeds\n",
            directions: "Bring a medium pot of water to a boil. Add the noodles and cook them according to the directions, until they are slightly soft. Drain the water and set the noodles to the side.\nOver medium-high heat, add the green onion and pickled greens to a wok. Cook for about 1 minute. Remove them from the wok. Add the soy sauce, vinegar, chili paste, and noodles to the wok, and cook them for about 30 seconds.\nPlate each serving with half of the noodles, and garnish them with the cooked green onions, pickled greens, and sesame seeds.\nNotes:\nPickled green cheat: Pickled greens should be available at most Asian markets, but you can make a quick version by sautéing sliced cabbage or mustard greens in rice vinegar and a pinch of salt until the veggies are soft. You’ll need about ½ cup of fresh greens to start, and you should end with about ¼ cup once they cook.\nMaking it simple: Cook the noodles. Mix the soy sauce, rice vinegar, and chili paste in a small bowl, and pour over the noodles. Top each serving with uncooked green onions, pickled greens, and sesame seeds.\nThe gourmet touch: Use black rice vinegar and add 2 teaspoons of Szechuan peppercorns to the wok when you sauté the pickled greens and green onion. You can also add ½ cup chopped seitan to the recipe. Chop the seitan and marinate it in a mixture of chili paste and rice vinegar for at least 2 hours, then sauté it for about 1 minute. Serve on top of the noodles.",
            category: "Lunch",
            datePublished: "2020-01-05",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/dan-dan-mian-noodles-recipe/"
        ),
        Recipe(
            name: "Mango and Black Bean Tacos",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/37358/mango_black_bean_tacos_01-1-e1488330832929-688x387-c.jpg",
            description: "Ready in just 10 minutes, these colorful, hearty tacos—filled with a lime-infused mix of mango, avocado, and black beans— are as scrumptious as they are speedy. Note: The recipe calls for fresh mango, but frozen will also work.",
            ingredients: """
2 mangos, diced
½ red onion, diced
1 red bell pepper, diced
Juice of 1 lime
Handful of cilantro, chopped
2 avocados, diced
1 (15-ounce) can black beans, drained and rinsed
Salt to taste
10 to 12 (6-inch) corn tortillas
Mango salsa and/or choice of hot sauce
""",
            directions: """
Place mango, red onion, red bell pepper, lime juice, chopped cilantro, avocado, black beans in a medium bowl. Mix well.
Add a few generous pinches of salt. Taste and adjust seasoning. Chill until ready to use.
Char (or warm) your tortillas. Place about ½ cup of the filling in the center of each tortilla. Fold and serve with salsa and/or hot sauce.
""",
            category: "Snack",
            datePublished: "2020-02-06",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/mango-black-bean-tacos/"
        ),
        Recipe(
            name: "Quick Chickpea Bolognese",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/60788/Quick-Chickpea-Bolognese-688x387-c.jpg",
            description: "Using pantry staples such as canned chickpeas and tomatoes, this rustic plant-based bolognese is seriously satisfying, without leaving you feeling stuffed. Pro tip: Make sure to get the pasta cooking first; then prepare the sauce.",
            ingredients: """
1½ cups diced red onion
3 cloves fresh garlic, minced
1 (15.5-ounce) can chickpeas, rinsed, drained, and chopped (1½ cups)
1 medium carrot, cut into ¼-inch dice
1 cup mushrooms (any kind you like), cut into ¼-inch dice
1 (14.5-ounce) can diced tomatoes (1½ cups)
1 (15-ounce) can tomato sauce (1½ cups)
½ tablespoon dried oregano
1 tablespoon dried parsley
Sea salt
3 cups cooked brown rice penne or fusilli pasta (or any other whole-grain pasta)
""",
            directions: """
Heat a large saucepan over medium heat, add the red onions, garlic, chickpeas, carrots, and a dash of salt. Sauté the vegetables for about 5 minutes, or until the onions are slightly translucent. Add water 1 to 2 tablespoons at a time, as needed, to keep vegetables from sticking to the pan.
Add the mushrooms and sauté for about 2 minutes.
Add the diced tomatoes, tomato sauce, oregano, and parsley. Sauté for 2 more minutes, taste and adjust seasoning.
Pour as much of the sauce as you like over the pasta and eat up—it's all fantastic for you and tastes even better.
""",
            category: "Lunch",
            datePublished: "2020-03-07",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/quick-chickpea-bolognese/"
        ),
        Recipe(
            name: "Greens and Things Sandwiches with Carrot Hummus",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/153074/greens-things-sandwiches-wordpress-688x387-c.jpg",
            description: "In this mouthwatering gourmet sandwich, creamy (and colorful!) carrot hummus perfectly complements crisp lettuce, crunchy cucumber slices, and the sweet-spicy bite of pickled pepperoncini peppers.",
            ingredients: """
2 medium carrots, thinly sliced
2 tablespoons chopped shallot
1 clove garlic, minced
1 15-oz. can no-salt-added chickpeas, rinsed and drained
3 tablespoons lemon juice
1 tablespoon chopped fresh dill
Freshly ground black pepper, to taste
8 slices country-style multigrain bread, toasted
4 teaspoons toasted sunflower kernels
1 cup thinly sliced cucumber
¼ cup sliced pickled pepperoncini peppers, drained
2 cups fresh baby kale and/or baby spinach
""",
            directions: """
For veggie hummus, in a large skillet combine carrots, shallot, garlic, and ¼ cup water. Bring to simmering. Cover and cook on medium-low about 10 minutes or until carrots are tender. Transfer carrot mixture to a blender or food processor. Add chickpeas and lemon juice. Cover and blend or process until smooth, adding water 1 Tbsp. at a time to reach desired consistency. Transfer mixture to a bowl. Stir in dill and black pepper.
Spread half of the bread slices with hummus. Top with sunflower kernels, cucumber, pepperoncinis, and kale. Top with the remaining bread slices.
""",
            category: "Breakfast",
            datePublished: "2020-04-08",
            url: "https://www.forksoverknives.com/recipes/vegan-burgers-wraps/greens-and-things-sandwiches/"
        ),
        Recipe(
            name: "Penne with Butternut Squash and Fresh Fennel",
            image: "https://www.forksoverknives.com/wp-content/uploads/fly-images/159471/Penne-with-Butternut-Squash-and-Fresh-Fennel-wordpress-688x387-c.jpg",
            description: "Ready in a jiffy, this scrumptious pasta pairs the silky, subtle anise notes of fennel bulb with walnuts, earthy whole grain pasta, and sweet butternut squash. Bonus: This is a one-pot meal, so no messy cleanup!",
            ingredients: """
2 medium fennel bulbs
8 oz. dry whole grain penne
1 cup chopped onion
1½ cups cubed fresh butternut squash
¼ cup chopped walnuts
""",
            directions: """
Bring a large pot of water to boiling. Remove stems from fennel bulbs; trim and coarsely chop the fronds. Halve bulbs, then cut into ¼-inch-thick slices.
Add penne and onion to boiling water. Cook according to package directions for the pasta, adding squash and sliced fennel bulb the last 7 minutes of cooking.
Reserve 3 cups cooking water. Drain pasta and vegetables. Return pasta and vegetables to pot. Add 1 to 1½ cups cooking water and ¼ to ½ cup chopped fennel fronds to pot; toss to coat. Add additional reserved cooking water if desired for saucier pasta. Sprinkle with walnuts.
""",
            category: "Dinner",
            datePublished: "2020-05-09",
            url: "https://www.forksoverknives.com/recipes/vegan-pasta-noodles/penne-butternut-squash-fresh-fennel/"
        )
    ]
}
