class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password
  has_many :posts, serializer: ImageSerializer 
  has_many :liked_images, serializer: LikeSerializer
  has_many :image_comments, serializer: CommentSerializer
end
