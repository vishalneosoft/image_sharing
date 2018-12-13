class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.references :owner, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
