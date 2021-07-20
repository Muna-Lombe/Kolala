class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :capacity, presence: true , length: { minimum: 0 }
  validates :date, presence: true
end
