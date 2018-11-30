# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hanaa = User.create(first_name: "Hanaa", last_name: "Sadoqi", username: "hsadoqi", password: "hello")
steven = User.create(first_name: "Steven", last_name: "Paulino", username: "spaulino", password: "hello")

first_image = Image.create(caption: 'Hello', img: "whats up", poster: hanaa)
second_image = Image.create(caption: 'Hello', img: "whats up", poster: hanaa)
third_image = Image.create(caption: 'Hello', img: "whats up", poster: steven)

Like.create(like_count: 1, liker: hanaa, image: first_image)
Like.create(like_count: 1, liker: steven, image: first_image)
Like.create(like_count: 1, liker: steven, image: second_image)
Like.create(like_count: 1, liker: steven, image: third_image)

Comment.create(content: "Hello", commenter: hanaa, image: second_image)
Comment.create(content: "Hello", commenter: steven, image: first_image)
Comment.create(content: "Hello", commenter: hanaa, image: third_image)
Comment.create(content: "Hello", commenter: hanaa, image: first_image)
