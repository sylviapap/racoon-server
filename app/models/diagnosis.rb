class Diagnosis < ApplicationRecord
  belongs_to :user
  has_many :reported_symptoms, dependent: :destroy
  has_many :symptoms, through: :reported_symptoms, dependent: :destroy
end
