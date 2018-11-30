class LikeSerializer < ActiveModel::Serializer
  attributes :id, :like_count
  belongs_to :follower
  belongs_to :image
end
