class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  USER_TYPES = ["owner", "guest"]
  NATIONALITIES = ["American", "British", "Italian", "Polish"]
  has_many :hostels # add an if statement depending on user_type
  has_many :bookings

  def last_week_bookings
    hostels.map do |hostel|
      hostel.bookings.select do |booking|
        DateTime.tomorrow.midnight > self.hostels.last.bookings.last.created_at && (DateTime.tomorrow.midnight - 7.day) < self.hostels.last.bookings.last.created_at
      end
    end.count
  end
  # validates :user_type, presence: true
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :nationality, presence: true
  # validates :age, presence: true, numericality: { only_integer: true }
end
