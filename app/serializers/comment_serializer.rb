class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user, :created_at
  belongs_to :user
  belongs_to :map_marker
end
