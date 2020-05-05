class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :description, :label, :triage_level, :user
  has_one :user
end
