class ImageSerializer < ActiveModel::Serializer
  attributes :id, :caption, :img, :likes, :comments, :commenters, :likers
  belongs_to :poster
end
