class Spot < ActiveRecord::Base
  alias_attribute :user, :owner
  belongs_to  :user

#Il faudrait peut-etre soit rajouter un champs "visible" soit
# mettre les champs correspondants à ces attributs
# en obligatoire pour éviter qu'on affiche des spots
# non finis - a voir si on fait un filtre au niveau de l'index
# et de la show


  # validates :title, presence: true
  # validates :description, presence: true
  # validates :price, presence: true
  # validates :address, presence: true

  paginates_per 20

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
