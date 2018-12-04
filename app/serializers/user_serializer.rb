class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username, :posts 
end
