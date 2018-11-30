# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hanaa = User.create(first_name: "Hanaa", last_name: "Sadoqi", username: "hsadoqi", password: "hello")
steven = User.create(first_name: "Steven", last_name: "Paulino", username: "spaulino", password: "hello")

first_image = Image.create(caption: 'Hello', img: "whats up", poster_id: 1)
second_image = Image.create(caption: 'Hello', img: "whats up", poster_id: 2)
third_image = Image.create(caption: 'Hello', img: "whats up", poster_id: 1)

Like.create(like_count: 1, follower_id: 2, image_id: 1)
Like.create(like_count: 1, follower_id: 1, image_id: 2)
Like.create(like_count: 1, follower_id: 1, image_id: 2)
Like.create(like_count: 1, follower_id: 2, image_id: 2)

Comment.create(content: "Hello", follower_id: 2, image_id: 1)
Comment.create(content: "Hello", follower_id: 1, image_id: 2)
Comment.create(content: "Hello", follower_id: 1, image_id: 2)
Comment.create(content: "Hello", follower_id: 2, image_id: 2)