class Symptom < ApplicationRecord
  has_many :reported_symptoms, dependent: :destroy
end
