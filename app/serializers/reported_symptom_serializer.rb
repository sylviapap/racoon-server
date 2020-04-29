class ReportedSymptomSerializer < ActiveModel::Serializer
  attributes :id, :user, :symptom
  has_one :user
  has_one :symptom
end
