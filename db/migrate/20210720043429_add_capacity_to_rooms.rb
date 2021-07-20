class AddCapacityToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :capacity, :integer
  end
end
