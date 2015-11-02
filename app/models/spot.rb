class Spot < ActiveRecord::Base
  alias_attribute :user, :owner
  belongs_to  :user

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :address, presence: true

end
