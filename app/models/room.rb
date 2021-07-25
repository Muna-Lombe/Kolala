class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings ,dependent: :destroy
  has_many :users, through: :bookings
  has_many :comments, through: :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :capacity, presence: true , length: { minimum: 0 }
  validates :date, presence: true
  validates :phone_number, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_capacity,
    against: [ :name, :capacity ],
    using: {
      tsearch: { any_word: true}
    }
end
