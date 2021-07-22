class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_many :comments
end
