class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hostel
  # belongs_to :room
  # validates :date, presence: true // i remove this as it will require a gem
  # that handles time frame of the booking with start and end date
  # revisit with MVP 2
  validates :nights, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
  validates :hostel_id, presence: true
  # validates :room_id, uniqueness: true, presence: true // this is being commented
  # out as MPV 1 while not have rooms db as per TA's advice

  # def last_hostel_booking_user

  # end


end
