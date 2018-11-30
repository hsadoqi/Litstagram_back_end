class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :commenter
  belongs_to :image
end
