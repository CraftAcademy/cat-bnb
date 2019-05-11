class Offer < ApplicationRecord
  belongs_to :listing
  validates_presence_of :name, :email, :location, :price
end
