class Listing < ApplicationRecord
  validates_presence_of :pet_name, :pet_location, :pet_description, :start_date, :end_date, :pet_picture
end
