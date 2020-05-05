class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :description, :label, :triage_level, :user, :created_at
  has_one :user
end
