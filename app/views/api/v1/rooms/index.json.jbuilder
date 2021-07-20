json.rooms do
  json.array! @rooms do |room|
    json.extract! room, :id, :name, :address, :description, :room_photo_url, :price, :is_available,:capacity, :user_id
  end
end