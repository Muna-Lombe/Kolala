class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :rooms
  # validates :name, presence:true
end
