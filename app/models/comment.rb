class Comment < ApplicationRecord
    belongs_to :image 
    belongs_to :commenter, foreign_key: 'commenter_id', class_name: 'User'

    def format_json
        return {
            id: self.id,
            commenter_name: self.commenter.username,
            commenter_id: self.commenter.id,
            image_id: self.image.id,
            content: self.content
        }
    end
end
