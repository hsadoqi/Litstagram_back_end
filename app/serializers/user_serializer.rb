class UserSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :username, :password, :posts 

end
