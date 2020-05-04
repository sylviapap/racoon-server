class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :first_name, presence: true
    validates :first_name, length: { minimum: 2 }

    validates :password, confirmation: true
    validates :password_confirmation, presence: true
    validates :password, length: { in: 6..20 }

    has_many :comments, dependent: :destroy

    has_many :bookmarks, dependent: :destroy
    has_many :map_markers, through: :bookmarks, dependent: :destroy

    has_many :created_markers, class_name: 'MapMarker', inverse_of: 'creator', dependent: :destroy

    has_many :diagnoses, dependent: :destroy
    has_many :reported_symptoms, through: :diagnoses, dependent: :destroy

end