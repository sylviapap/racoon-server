class CreateMapMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :map_markers do |t|
      t.float :latitude
      t.float :longitude
      t.string :title
      t.string :address
      t.string :message
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
