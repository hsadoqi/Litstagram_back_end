class User < ApplicationRecord

    has_many :posts, foreign_key: 'poster_id', class_name: "Image"
    has_many :posters, -> {distinct}, through: :posts 

    has_many :likes, foreign_key: :follower_id, class_name: 'Like'
    has_many :liked_images, through: :likes, source: :image
    has_many :followers, -> {distinct}, through: :liked_images

    has_many :comments, foreign_key: :follower_id, class_name: 'Comment'
    has_many :image_comments, through: :comments, source: :image
    has_many :followers, -> {distinct}, through: :image_comments

end
