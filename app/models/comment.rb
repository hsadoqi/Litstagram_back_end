class Comment < ApplicationRecord
    belongs_to :image 
    belongs_to :follower, foreign_key: 'follower_id', class_name: 'User'
end
