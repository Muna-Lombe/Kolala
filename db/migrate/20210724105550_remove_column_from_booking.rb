class RemoveColumnFromBooking < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :name, :string
  end
end
