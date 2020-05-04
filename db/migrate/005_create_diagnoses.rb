class CreateDiagnoses < ActiveRecord::Migration[6.0]
  def change
    create_table :diagnoses do |t|
      t.string :description
      t.string :label
      t.string :triage_level
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
