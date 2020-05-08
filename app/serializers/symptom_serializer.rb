class SymptomSerializer < ActiveModel::Serializer
  attributes :id,
  :common_name,
  :infermedica_id,
  :seriousness

end