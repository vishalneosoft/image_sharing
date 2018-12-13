class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :tagline
      t.references :owner, index: true, foreign_key: { to_table: :users }
      t.references :album, index: true, foreign_key: true

      t.timestamps
    end
  end
end
