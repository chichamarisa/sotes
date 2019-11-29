# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying all data..."

Post.destroy_all
User.destroy_all

puts "creating new seeds"

owner = User.new(email: 'test@gmail.com',
                 password: 'topsecret',
                 password_confirmation: 'topsecret')
owner.save(validate: false)

Post.create!(post: "I like cats", user_id: owner.id )
Post.create(post: "I like cats", user_id: owner.id )
Post.create(post: "I like monkey", user_id: owner.id )
Post.create(post: "Truffle oil", user_id: owner.id )
Post.create(post: "Black magik", user_id: owner.id )

puts "all done!"
