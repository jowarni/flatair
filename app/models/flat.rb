class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :capacity, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true, numericality: true
  validates :city, presence: true
  validates :country, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  # validates :user, presence: true
end
