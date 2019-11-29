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

Post.create!(post: "I like cats", owner_id: user.id )
Post.create(post: "I like cats", owner_id: user.id )
Post.create(post: "I like monkey", owner_id: user.id )
Post.create(post: "Truffle oil", owner_id: user.id )
Post.create(post: "Black magik", owner_id: user.id )

puts "all done!"
