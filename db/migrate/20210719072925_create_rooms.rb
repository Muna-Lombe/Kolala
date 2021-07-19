class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :address
      t.text :description
      t.text :room_photo_url
      t.integer :price
      t.boolean :is_available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
