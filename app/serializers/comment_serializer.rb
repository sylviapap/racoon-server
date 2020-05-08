class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :user_first_name
  # has_one :user
  has_one :map_marker

  def user_first_name
    object.user.first_name
  end
end
