class Image < ApplicationRecord

    belongs_to :poster, foreign_key: 'poster_id', class_name: 'User'

    has_many :likes, foreign_key: 'image_id', class_name: 'Like'
    has_many :comments, foreign_key: 'image_id', class_name: 'Like'

    has_many :followers, through: :likes
    has_many :followers, through: :comments
end
