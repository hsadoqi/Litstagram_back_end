class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :follower
  belongs_to :image
end
