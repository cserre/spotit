class Spot < ActiveRecord::Base
  alias_attribute :user, :owner
  belongs_to  :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :city, presence: true
  validates :area, presence: true
  validates :street, presence: true
  validates :style, presence: true
  validates :post_code, presence: true
  validates :exposition, presence: true

  paginates_per 20

  geocoded_by :address
  after_validation :geocode, if: :street_changed? || :post_code_changed? || :city_changed?

  def address
    [street, post_code, city].compact.join(', ')
  end
end
