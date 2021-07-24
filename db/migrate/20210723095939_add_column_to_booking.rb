class AddColumnToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :name, :string
  end
end
