class AddPhoneNumberToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :phone_number, :string
  end
end
