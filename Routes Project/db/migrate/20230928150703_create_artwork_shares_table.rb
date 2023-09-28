class CreateArtworkSharesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :artwork_shares_tables do |t|
      t.references :artwork, null: false, unique: true
      t.references :viewer, null: false
      
      t.timestamps
    end
  end
end
