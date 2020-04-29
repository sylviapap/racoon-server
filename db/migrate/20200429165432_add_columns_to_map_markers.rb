class AddColumnsToMapMarkers < ActiveRecord::Migration[6.0]
  def change
    add_column :map_markers, :message, :string
    add_column :map_markers, :type, :string
  end
end
