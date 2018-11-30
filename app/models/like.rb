class Like < ApplicationRecord

    belongs_to :image 
    belongs_to :liker, foreign_key: 'liker_id', class_name: 'User'
    
end
