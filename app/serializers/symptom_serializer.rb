class SymptomSerializer < ActiveModel::Serializer
  attributes :id,
  :category,
  :common_name,
  :infermedica_id,
  :name,
  :question,
  :seriousness,
  :sex_filter
end
