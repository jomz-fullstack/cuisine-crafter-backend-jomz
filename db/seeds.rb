user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")
user3 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

recipes = [
    {
        name: "steak",
        image:"https://media.istockphoto.com/id/1371751060/photo/,grilled-medium-rare-top-sirloin-beef-steak-or-rump-steak-on-a-steel-tray-dark-background-top.jpg?s=612x612&w=0&k=20&c=svqnTZV_l7DP0QPCG8L_-f6k7LuBUA-cH9wiL8eJqUs=",
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
        instructions:"cut the salmon into pieces", 
        protein:"salmon",
        ingredients:"salt and pepper the salmon",
        nutrition:"25 grams of protein",
    },
]

recipes.each do |each_recipe|
    Recipe.create each_recipe
    puts "creating recipe #{each_recipe}"
end

user1_reviews = [
    {
        header:"Taste delicious",
        body:"the pasta was very creamy",
        stars:3,
        recipe_id:1,
        
    },
]
user2_reviews = [ 
    {
        header:"It was not that great",
        body:"the steak was over cooked",
        stars:1,
        recipe_id:2,
    },
]
user3_reviews = [   
    {
        header:"Best food ive had in a long time",
        body:"would come back again!",
        stars:5,
        recipe_id:3,
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