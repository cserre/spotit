class Spot < ActiveRecord::Base
  # alias_attribute :user, :owner
  belongs_to  :user
  has_many :photos
  has_many :bookings
  has_many :spot_reviews
  accepts_nested_attributes_for :photos, reject_if: lambda {|attributes| attributes['picture'].blank?}, :allow_destroy => true

  validates :title, presence: true, length: { maximum: 36, too_long: "limit to 36 characters" }
  validates :description, presence: true
  validates :price, presence: true
  validates :city, presence: true
  validates :area, presence: true
  validates :street, presence: true
  validates :style, presence: true
  validates :address, presence: true
  validates :post_code, presence: true, format: { with: /\A\d{5}\z/, message: "this is not a post code" }
  validates :exposition, presence: true
  validate :has_photo
  # validates :photos, presence: true
  # validates_associated :photos

  paginates_per 20

  geocoded_by :address
  after_validation :geocode, if: :street_changed? || :post_code_changed? || :city_changed?

  # def address
  #   [street, post_code, city].compact.join(', ')
  # end

  def rating
    spot_reviews.average(:rating) || 0
  end

  def has_photo
    if photos.size == 1
      errors.add(:base, 'must have one photo')
    else
    end
  end
end
