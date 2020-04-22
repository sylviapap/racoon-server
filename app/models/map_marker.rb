class MapMarker < ApplicationRecord
    has_many :user_markers
    has_many :comments
    has_many :users, through: :user_markers
end
