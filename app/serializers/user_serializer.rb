class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :password, :posts, :liked_images, :comments_made, :comments, :likes
end
