class Hostel < ApplicationRecord
  has_many :rooms
  has_many :bookings
  # has_attachment :photo
  belongs_to :user
  validates :name, presence: true
  validates :address, uniqueness: true, presence: true
  validates :city_name, presence: true
  # validates :country, presence: true
  # validates :price, presence: true
  # validates :hostel_type, presence: true. // this is commented out as it was rejecting all
  # hostel creation attempts. type is changed to hostel_type as there is column
  # type reserved for pundit which causes errors
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
