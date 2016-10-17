# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "marting12@live.dk", password: "hejhejhej", admin: true)

# Generate random Blog Posts
10.times do |n|
	name = Faker::Name.name
	content = Faker::Lorem.paragraphs
	BlogPost.create!( title: name,
										post: content
										)
end

# Generate random recipes
10.times do |n|
	name = Faker::Name.first_name
	content = Faker::Lorem.paragraphs
	ingredients = Faker::Lorem.words(8)
	instructions = Faker::Lorem.words(6)
	Recipe.create!( title: name,
									description: content,
									ingredients: ingredients,
									instructions: instructions
										)
end
