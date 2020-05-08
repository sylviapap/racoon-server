class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :created_at
  has_one :user
  has_one :map_marker
end
