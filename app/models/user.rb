class User < ApplicationRecord
  has_many :bookings
  has_many :rooms
  # validates :name, presence:true
end
