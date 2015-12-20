# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.destroy_all
Recipe.destroy_all
Dish.destroy_all
Ingredient.destroy_all

Dish.create ({name: "doughnuts", course: "breakfast", description: "with like maple syrup or something.", price: 5, cost: 2})
Dish.create ({name: "lumberjack breakfast", course: "breakfast", description: "like eggs and potatoes and bacon and stuff.", price: 11, cost: 5})
Dish.create ({name: "waffles", course: "breakfast", description: "a big fluffy waffle with real maple syrup.", price: 10, cost: 4})
Dish.create ({name: "hamburger", course: "lunch", description: "cooked with a flamethrower.  also it has onions.", price: 12, cost: 5})
Dish.create ({name: "panino", course: "lunch", description: "with meat and cheese and stuff.", price: 12, cost: 5})
Dish.create ({name: "pasta fagioli", course: "lunch", description: "the best soup.", price: 8, cost: 2})
Dish.create ({name: "roast duck", course: "dinner", description: "a big one.", price: 18, cost: 10})
Dish.create ({name: "spaghetti alle vongole", course: "dinner", description: "creamy pasta with clams.", price: 15, cost: 8})
Dish.create ({name: "buccatini all'amatriciana", course: "dinner", description: "pasta with bacony tomato sauce.", price: 15, cost: 6})
Dish.create ({name: "fried brussels sprouts", course: "sides", description: "oh my god i love brussels sprouts.", price: 8, cost: 4})
Dish.create ({name: "kale salad", course: "sides", description: "because I live in brooklyn.", price: 10, cost: 5})
Dish.create ({name: "bruschetta", course: "sides", description: "toasted buttery bread with tomatoes.", price: 6, cost: 2})

Ingredient.create ({name: "chicken", description: "it's like a funny looking bird.  like a small, dumb eagle.", vegetarian: 0 })
Ingredient.create ({name: "duck", description: "like a chicken only different.", vegetarian: 0 })
Ingredient.create ({name: "beef", description: "comes from a large animal called a cow.", vegetarian: 0 })
Ingredient.create ({name: "bacon", description: "from a magical animal.", vegetarian: 0 })
Ingredient.create ({name: "guanciale", description: "from a magical animal.", vegetarian: 0 })
Ingredient.create ({name: "soppressata", description: "from a magical animal.", vegetarian: 0 })
Ingredient.create ({name: "ham", description: "from a magical animal.", vegetarian: 0 })
Ingredient.create ({name: "pork", description: "from a magical animal.", vegetarian: 0 })
Ingredient.create ({name: "clam", description: "otters love them", vegetarian: 0 })
Ingredient.create ({name: "chicken stock", description: "broth made from a chicken", vegetarian: 0 })
Ingredient.create ({name: "milk", description: "also comes from a cow.", vegetarian: 1 })
Ingredient.create ({name: "butter", description: "comes from milk.", vegetarian: 1 })
Ingredient.create ({name: "egg", description: "from a chicken.", vegetarian: 1 })
Ingredient.create ({name: "cheese", description: "cheesy.", vegetarian: 1 })
Ingredient.create ({name: "tomato", description: "Like an apple, except it's mushy and also it tastes different and looks different too.", vegetarian: 2 })
Ingredient.create ({name: "olive oil", description: "the nectar of the gods.", vegetarian: 2 })
Ingredient.create ({name: "brussels sprout", description: "man i love brussels sprouts.", vegetarian: 2 })
Ingredient.create ({name: "celery", description: "basically crunchy green water.", vegetarian: 2 })
