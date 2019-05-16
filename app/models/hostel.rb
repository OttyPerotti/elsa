class Hostel < ApplicationRecord
  has_many :rooms
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :address, uniqueness: true, presence: true
  validates :city_name, presence: true
  validates :type, presence: true
end
