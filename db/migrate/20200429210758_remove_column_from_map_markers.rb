class RemoveColumnFromMapMarkers < ActiveRecord::Migration[6.0]
  def change

    remove_column :map_markers, :type, :string
  end
end
