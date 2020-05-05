class RemoveColumnDiagnosisFromReportedSymptoms < ActiveRecord::Migration[6.0]
  def change
    remove_column :reported_symptoms, :diagnosis_id
  end
end
