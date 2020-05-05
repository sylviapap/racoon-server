class CreateReportedSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :reported_symptoms do |t|
      t.references :user, foreign_key: true
      t.references :symptom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
