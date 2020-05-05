class ReportedSymptomSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :symptom_id
  has_one :user
  has_one :symptom
end
