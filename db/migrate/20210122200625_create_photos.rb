class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image_url
      t.string :location
      t.string :description
      t.string :date
      t.integer :likes
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
