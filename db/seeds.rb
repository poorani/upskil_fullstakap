# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plan.create(name: 'Weekly', price: 100 )
Plan.create(name: 'Monthly', price: 340 )
Plan.create(name: 'Weekend', price: 100 )
Plan.create(name: 'Guest', price: 0)