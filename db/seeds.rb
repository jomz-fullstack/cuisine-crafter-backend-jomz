user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user3 = User.where(email: "test3@example.com").first_or_create(password: "password", password_confirmation: "password")

recipes = [
    {
        name: "steak",
        image:"https://img.freepik.com/free-photo/juicy-steak-medium-rare-beef-with-spices-grilled-vegetables_24972-2328.jpg?size=626&ext=jpg&ga=GA1.1.1412446893.1704672000&semt=sph",
        instructions:"Add the oil to the pan and heat until it begins to shimmer and move fluidly around the pan.",
        protein:"steak",
        ingredients:"steak, oil, butter",
        nutrition:"30 grams protein",
    },
    {
        name: "chicken",
        image: "https://natashaskitchen.com/wp-content/uploads/2022/05/Tuscan-Chicken-Recipe-SQ.jpg",
        instructions: "Put the chicken in the oven",
        protein:"chicken",
        ingredients:"steak, seasonings",
        nutrition:"20 grams of protein",
    },
    {
        name: "Salmon",
        image: "https://www.cookingclassy.com/wp-content/uploads/2018/05/grilled-salmon-3.jpg",
        instructions:"1. Preheat oven to 400 degrees. Line a large baking pan with parchment paper; set aside. 
        2. Whisk together lemon juice, dried dill, honey, garlic, 1/2 teaspoon salt, and 1/2 teaspoon ground black pepper in a small bowl; set aside.
        3. Place salmon fillets in the middle of the prepared baking pan; spoon lemon juice mixture over salmon. Place 2 lemon slices on each fillet. Place zucchini slices and tomatoes in a medium bowl. 
        4. Toss with olive oil, remaining 1/2 teaspoon salt, and 1/2 teaspoon black pepper. Arrange vegetables around salmon.
        5. Bake 13 to 17 minutes or until salmon reaches 145 degrees. Garnish with fresh dill, if desired.", 
        protein:"salmon",
        ingredients:"salt and pepper the salmon",
        nutrition:"25 grams of protein",
    },
    {
        name: "Pan-Fried Sesame Garlic Tofu",
        image: "https://www.tablefortwoblog.com/wp-content/uploads/2018/09/pan-fried-spicy-garlic-tofu-recipe-photos-tablefortwoblog-1-scaled.jpg.webp",
        instructions:"1. Place two paper towels on a plate then place the entire block of tofu (drained from its packaging liquid) onto the plate. Place two more paper towels on top of the tofu then put a heavy item on top. Not TOO heavy that it would completely crush the tofu but heavy enough that it can squeeze out liquid.2. Leave the tofu to drain for 30 minutes and halfway through, change out the paper towels. 3. ALTERNATIVELY and more eco-friendly: place a wire baking rack on top of a rimmed baking sheet. Place tofu on top and then put a heavy object on top and let drain for 30 minutes. 4. Once the tofu has drained, slice in half then into cubes and place into a large bowl. Sprinkle cornstarch on top and gently toss with your hands to ensure all tofu pieces are covered. 5. In a large skillet, add sesame oil and vegetable oil then bring up to medium-high heat. 6. Once oil is heated up, add the tofu to the skillet and let brown on all sides. 7. In the meantime, whisk together the ingredients for the sauce. 8. Once the tofu has browned and crisped up on all sides, add the sauce to the skillet and it should start to thicken immediately. Toss the tofu around to coat then remove from heat.9. Serve and enjoy!",
        protein:"tofu",
        ingredients:"cornstarch, sesame oil, vegetable oil, low-sodium soy sauce, water, honey, sambal oelek, garlic paste, rice wine vinegar",
        nutrition:"1 SERVING | Calories: 313 KCAL | Carbohydrates: 17 G | Protein: 19 G | Fat: 16 G",
    },
    {
        name: "Egg-celent Breakfast Muffins",
        image: "https://fruitsandveggies.org/wp-content/uploads/2023/11/shutterstock_1445166449-masthead.jpg",
        instructions: "1. Preheat the oven to 350 degrees. Prepare the muffin tin with non-stick spray. 2. Wash your hands with soap and water. 3. Crack the eggs into a large bowl. Then wash your hands with soap and water again. 4. In the large bowl, whisk together the eggs, milk, pepper, and paprika until well combined. 5. Add the broccoli, red bell pepper, orange bell pepper, and cheddar cheese to the bowl. Stir to combine. 6. Using a ¼ cup measure, fill each muffin spot so that it is about ¾ of the way full. 7. Bake for 20 minutes, or until the eggs are set. 8. Allow to cool slightly before using a spatula or butter knife to remove the egg bites from the muffin tin. And enjoy!",
        protein:"Eggs",
        ingredients:"Oil, Milk, Pepper, Praprika, Brocolli, Red Bel Pepper, Orange Bell Pepper, Cheddar Cheese",
        nutrition:"9999999 grams of protein",
    },
]

recipes.each do |each_recipe|
    Recipe.create each_recipe
    puts "creating recipe #{each_recipe}"
end

user1_reviews = [
    {
        header:"Beef Tataki",
        body:"The Beef Tataki was cooked to perfection",
        stars:5,
    },
    {
        header:"Beef Lo Mein Noodles",
        body:"You have to try this recipe!",
        stars:5,
    },
]
user2_reviews = [ 
    {
        header:"Chicken Stir-Fry",
        body:"Easy to cook and great taste",
        stars:4,
    },
    {
        header:"Vegetarian Tacos",
        body:"An amazing combination of flavors",
        stars:4,
    },
]
user3_reviews = [   
    {
        header:"Shrimp Scampi Linguine",
        body:"The pasta was creamy and yummy",
        stars:5,
    },
    {
        header:"Chicken Curry",
        body:"The best curry I have made",
        stars:4,
    },
    
]



user1_reviews.each do |each_review|
    user1.reviews.create each_review
    puts "creating review #{each_review}"
end

user2_reviews.each do |each_review|
    user2.reviews.create each_review
    puts "creating review #{each_review}"
end

user3_reviews.each do |each_review|
    user3.reviews.create each_review
    puts "creating review #{each_review}"
end