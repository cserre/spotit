class Spot < ActiveRecord::Base
  alias_attribute :user, :owner
  belongs_to  :user

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :price, presence: true
  # validates :address, presence: true

  paginates_per 20

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
