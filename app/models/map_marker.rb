class MapMarker < ApplicationRecord
    has_many :user_markers, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :users, through: :user_markers

    belongs_to :creator, class_name: 'User', foreign_key: :user_id
end
