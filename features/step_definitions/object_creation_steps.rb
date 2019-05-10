Given("the following listings exist") do |table|
  table.hashes.each do |listing|
    FactoryBot.create(:listing, listing)
  end
end

Given("the following offers exists on a listing") do |table|
  table.hashes.each do |offer|
    listing_offer = Listing.find_or_create_by(pet_name: offer[:listing])
    FactoryBot.create(:offer, offer
      .except('listing')
      .merge(listing: listing_offer))
  end
end