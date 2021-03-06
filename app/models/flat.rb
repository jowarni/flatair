class Flat < ActiveRecord::Base
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :title, presence: true
  validates :capacity, presence: true
  validates :street, presence: true
  validates :zip_code, presence: true, numericality: true
  validates :city, presence: true
  validates :country, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  validates :user, presence: true
  has_attached_file :picture,
  styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
  content_type: /\Aimage\/.*\z/

  geocoded_by :address
  after_validation :geocode, if: ->(flat){ flat.street_changed? || flat.zip_code_changed? || flat.city_changed? || flat.country_chanded? }

  def address
    "#{street}, #{zip_code}, #{city}, #{country}"
  end

  def self.search(search)
    if search
      where('city LIKE ?', "%#{search}%")
    else
      all
    end
  end
end


