class AddUserRefToReportedSymptoms < ActiveRecord::Migration[6.0]
  def change
    add_reference :reported_symptoms, :user, foreign_key: true
  end
end
