class ChangeDiagnosisColumnReportedSymptoms < ActiveRecord::Migration[6.0]
  def change
    change_column_null :reported_symptoms, :diagnosis_id, true
  end
end
