class Symptom < ApplicationRecord
  has_many :reported_symptoms, dependent: :destroy
  has_many :diagnoses, through: :reported_symptoms, dependent: :destroy
end
