class RemoveColumnsFromSymptoms < ActiveRecord::Migration[6.0]
  def change
    remove_columns :symptoms, :category, :common_name, :infermedica_id, :question, :sex_filter
  end
end
