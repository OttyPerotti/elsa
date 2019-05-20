class Room < ApplicationRecord
  has_many :bookings
  belongs_to :hostel
  validates :bed, presence: true
  validates :type, presence: true
  validates :hostel_id, uniqueness: true, presence: true
  validates :availability, presence: { in: [true, false] }



  def last_room_booked
    self.hostel.where({@user.booking.last})
  end
end
