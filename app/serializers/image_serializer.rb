class ImageSerializer < ActiveModel::Serializer
  attributes :id, :caption, :img, :likes, :comments, :commenters, :likers, :poster
  belongs_to :poster
end
