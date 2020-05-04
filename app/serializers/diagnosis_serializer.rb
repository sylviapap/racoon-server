class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :description, :label, :triage_level, :reported_symptoms, :user
  has_one :user
end
