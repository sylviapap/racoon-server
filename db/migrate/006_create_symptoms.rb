class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.string :category
      t.string :common_name
      t.string :infermedica_id
      t.string :name
      t.string :question
      t.string :seriousness
      t.string :sex_filter
      t.boolean :is_emergency, default: false

      t.timestamps
    end
  end
end
