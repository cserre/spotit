class Spot < ActiveRecord::Base
  alias_attribute :user, :owner
  belongs_to  :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

  paginates_per 20

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def address
    [street, post_code, city].compact.join(', ')
  end

  def address_changed?
    street_changed? || post_code_changed? || city_changed?
  end

end
