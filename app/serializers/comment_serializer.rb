class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :content, :created_at
  belongs_to :user
  belongs_to :map_marker
end
