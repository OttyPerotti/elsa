class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hostel
  belongs_to :room
  validates :date, presence: true
  validates :nights, presence: true, numericality: { only_integer: true }
  validates :user_id, uniqueness: true, presence: true
  validates :hostel_id, uniqueness: true, presence: true
  validates :room_id, uniqueness: true, presence: true
end
