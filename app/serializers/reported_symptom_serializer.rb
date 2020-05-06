class ReportedSymptomSerializer
  include FastJsonapi::ObjectSerializer

  attribute :id
  belongs_to :user
  belongs_to :symptom
end
