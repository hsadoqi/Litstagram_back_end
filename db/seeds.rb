# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hanaa = User.create(first_name: "Hanaa", last_name: "Sadoqi", username: "hsadoqi", password: "hello")
steven = User.create(first_name: "Steven", last_name: "Paulino", username: "spaulino", password: "hello")
arren = User.create(first_name: "Arren", last_name: "Alexander", username: "aalexander", password: "hello")
cristina = User.create(first_name: "Cristina", last_name: "Murillo", username: "cmurillo", password: "hello")
helen = User.create(first_name: "Helen", last_name: "Liutongco", username: "hliutongco", password: "hello")

first_image = Image.create(caption: 'Hello', img: "https://www.gettyimages.ie/gi-resources/images/Homepage/Hero/UK/CMS_Creative_164657191_Kingfisher.jpg", poster: hanaa)
second_image = Image.create(caption: 'Ya like it?', img: "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&h=350", poster: hanaa)
third_image = Image.create(caption: 'Whats up', img: "https://www.w3schools.com/w3css/img_lights.jpg", poster: hanaa)
fourth_image = Image.create(caption: 'Hello', img: "https://wallpaperbrowse.com/media/images/soap-bubble-1958650_960_720.jpg", poster: hanaa)
fifth_image = Image.create(caption: 'Ya like it?', img: "https://images.pexels.com/photos/326055/pexels-photo-326055.jpeg?cs=srgb&dl=beautiful-blur-bright-326055.jpg&fm=jpg", poster: hanaa)
sixth_image = Image.create(caption: 'Whats up', img: "https://static.toiimg.com/img/62355428/Master.jpg", poster: hanaa)

Like.create(like_count: 1, liker: hanaa, image: first_image)
Like.create(like_count: 1, liker: steven, image: first_image)
Like.create(like_count: 1, liker: helen, image: second_image)
Like.create(like_count: 1, liker: steven, image: third_image)

Comment.create(content: "Great image", commenter: hanaa, image: second_image)
Comment.create(content: "Perfect eye", commenter: steven, image: first_image)
Comment.create(content: "It's lit", commenter: arren, image: third_image)
Comment.create(content: "Yeah", commenter: hanaa, image: first_image)
