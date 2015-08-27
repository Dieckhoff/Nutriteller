# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ingredient.create({title: 'tomato', is_vegetarian: true, is_vegan: true, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'carrot', is_vegetarian: true, is_vegan: true, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'cheese', is_vegetarian: true, is_vegan: false, is_gluten_free: true, is_lactose_free: false})
Ingredient.create({title: 'milk', is_vegetarian: true, is_vegan: false, is_gluten_free: true, is_lactose_free: false})
Ingredient.create({title: 'egg', is_vegetarian: true, is_vegan: false, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'ham', is_vegetarian: false, is_vegan: false, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'spinach', is_vegetarian: true, is_vegan: true, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'wheat', is_vegetarian: true, is_vegan: true, is_gluten_free: false, is_lactose_free: true})
Ingredient.create({title: 'sugar', is_vegetarian: true, is_vegan: true, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'basil', is_vegetarian: true, is_vegan: true, is_gluten_free: true, is_lactose_free: true})
Ingredient.create({title: 'coconut', is_vegetarian: true, is_vegan: true, is_gluten_free: true, is_lactose_free: true})
