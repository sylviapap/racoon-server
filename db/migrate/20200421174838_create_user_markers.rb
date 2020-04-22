class CreateUserMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :user_markers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :map_marker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
