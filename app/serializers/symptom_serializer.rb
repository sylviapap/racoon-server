class SymptomSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :seriousness,
  :is_emergency

end