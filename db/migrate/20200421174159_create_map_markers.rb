class CreateMapMarkers < ActiveRecord::Migration[6.0]
  def change
    create_table :map_markers do |t|
      t.float "latitude"
      t.float "longitude"
      t.string "title"
      t.string "address"

      t.timestamps
    end
  end
end
