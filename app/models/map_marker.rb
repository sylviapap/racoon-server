class MapMarker < ApplicationRecord
    has_many :user_markers
    has_many :comments
    has_many :users, through: :user_markers

    belongs_to :creator, class_name: 'User', foreign_key: :user_id
end
