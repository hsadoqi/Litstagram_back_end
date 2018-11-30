class ImageSerializer < ActiveModel::Serializer
  attributes :id, :caption, :img, :likes, :comments, :commenters, :likers
  belongs_to :poster
  # has_many :likes, serializer: LikeSerializer
  # has_many :comments, serializer: CommentSerializer
  # has_many :followers, serializer: UserSerializer
end
