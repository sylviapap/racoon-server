class RemoveAddressFromMapMarkers < ActiveRecord::Migration[6.0]
  def change
    remove_column :map_markers, :address
  end
end
