# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all data..."

Post.create(post: "I like cats")
Post.create(post: "I like monkey")
Post.create(post: "Truffle oil")
Post.create(post: "Black magik")

puts "all done!"
