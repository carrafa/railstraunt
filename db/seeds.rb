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

Dish.create ({name: "hamburger", course: "lunch", description: "cooked with a flamethrower.  and it also has onions.", price: 15})
Dish.create ({name: "doughnuts", course: "breakfast", description: "with like maple syrup or something", price: 5})
Dish.create ({name: "lumberjack breakfast", course: "breakfast", description: "like eggs and potatoes and bacon and stuff", price: 15})
Dish.create ({name: "roast duck", course: "dinner", description: "a big one", price: 25})
Dish.create ({name: "brussels sprouts", course: "dinner", description: "oh my god i love brussels sprouts", price: 25})

Ingredient.create ({name: "chicken", description: "it's like a funny looking bird.  like a small, dumb eagle.", vegetarian: 0 })
Ingredient.create ({name: "eggs", description: "from a chicken", vegetarian: 1 })
Ingredient.create ({name: "milk", description: "from a cow", vegetarian: 1 })
Ingredient.create ({name: "bacon", description: "from a magical pig-like animal.", vegetarian: 0 })
Ingredient.create ({name: "tomatoes", description: "Like an apple, except it's mushy and also it tastes different and looks different too", vegetarian: 2 })
Ingredient.create ({name: "brussels sprouts", description: "man i love brussels sprouts", vegetarian: 2 })
