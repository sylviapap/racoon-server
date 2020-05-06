class SymptomSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id,
  :category,
  :common_name,
  :infermedica_id,
  :name,
  :question,
  :seriousness,
  :sex_filter

  has_many :reported_symptoms
end
