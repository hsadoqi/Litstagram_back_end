class User < ApplicationRecord

    has_many :posts, foreign_key: :poster, class_name: "Image"
    has_many :posters, -> {distinct}, through: :posts 

    has_many :likes, foreign_key: :liker, class_name: 'Like'
    has_many :liked_images, through: :likes, source: :image
    has_many :likers, -> {distinct}, through: :liked_images

    has_many :comments, foreign_key: :commenter, class_name: 'Comment'
    has_many :comments_made, through: :comments, source: :image
    has_many :commenters, -> {distinct}, through: :comments_made

    

end
