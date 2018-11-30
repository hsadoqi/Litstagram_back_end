class Comment < ApplicationRecord
    belongs_to :image 
    belongs_to :commenter, foreign_key: 'commenter_id', class_name: 'User'
end
