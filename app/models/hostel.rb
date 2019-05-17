class Hostel < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :address, uniqueness: true, presence: true
  validates :city_name, presence: true
  # validates :hostel_type, presence: true. // this is commented out as it was rejecting all
  # hostel creation attempts. type is changed to hostel_type as there is column
  # type reserved for pundit which causes errors
end
