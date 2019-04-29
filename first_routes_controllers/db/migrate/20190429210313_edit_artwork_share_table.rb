class EditArtworkShareTable < ActiveRecord::Migration[5.2]
  def change
  
  remove_index :artwork_shares, name: "index_artwork_shares_on_artwork_id"
  remove_index :artwork_shares, name: "index_artwork_shares_on_viewer_id"

  add_index :artwork_shares, [:viewer_id, :artwork_id], unique: true 
  
  end
end
