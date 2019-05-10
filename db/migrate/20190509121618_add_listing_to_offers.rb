class AddListingToOffers < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :listing, foreign_key: true
  end
end
