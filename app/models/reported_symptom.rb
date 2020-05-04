class ReportedSymptom < ApplicationRecord
  belongs_to :diagnosis
  belongs_to :symptom
end
