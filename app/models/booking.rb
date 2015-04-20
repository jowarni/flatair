class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :flat

  validates :arrival, presence: true
  validates :departure, presence: true
  validates :user, presence: true
  validates :flat, presence: true
end
