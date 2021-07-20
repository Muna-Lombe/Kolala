class AddDateToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :date, :string
  end
end
