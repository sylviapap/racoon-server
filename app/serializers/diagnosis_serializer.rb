class DiagnosisSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :description, :label, :triage_level, :created_at
  belongs_to :user
end
