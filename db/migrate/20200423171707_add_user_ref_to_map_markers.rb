class AddUserRefToMapMarkers < ActiveRecord::Migration[6.0]
  def change
    add_reference :map_markers, :user, foreign_key: true
  end
end
