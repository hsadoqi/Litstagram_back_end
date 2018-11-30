class LikeSerializer < ActiveModel::Serializer
  attributes :id, :like_count
  belongs_to :liker
  belongs_to :image
end
