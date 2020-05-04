class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :description, :label, :triage_level, :symptom
  has_one :user
end
