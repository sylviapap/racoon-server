class BookmarkSerializer < ActiveModel::Serializer
  attributes :id, :map_marker
  belongs_to :user
  belongs_to :map_marker
end
