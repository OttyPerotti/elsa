class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :hostels # add an if condition for user_type
  has_many :bookings
  validates :user_type, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :nationality, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
end
