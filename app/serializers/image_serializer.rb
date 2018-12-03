class ImageSerializer < ActiveModel::Serializer
  attributes :id, :caption, :img, :likes, :comments, :commenters, :likers, :poster, :like_count

  def like_count
    self.object.likes.count
  end

  def comments 
    self.object.comments.map {|comment| comment.format_json}
  end
end
