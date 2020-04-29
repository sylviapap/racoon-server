class User < ApplicationRecord
    has_secure_password

    validates :username, presence: true, uniqueness: { case_sensitive: false }

    has_many :comments, dependent: :destroy

    has_many :bookmarks, dependent: :destroy
    has_many :map_markers, through: :bookmarks, dependent: :destroy

    has_many :created_markers, class_name: 'MapMarker', inverse_of: 'creator', dependent: :destroy

    has_many :reported_symptoms
    has_many :symptoms, through: :reported_symptoms

end