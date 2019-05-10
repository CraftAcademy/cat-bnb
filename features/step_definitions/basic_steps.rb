When("I visit the landing page") do
  visit root_path
end

When("I click {string} link") do |link|
  click_link link
end

Given("I visit the New listings page") do
  visit new_listing_path
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string} button") do |button|
  click_on button
end

Then "stop" do
  binding.pry
end

When("I click {string} within {string} section") do |link, section|
  name = Listing.find_by(pet_name: section)
  dom_section = "#listing_#{name.id}"
  within(dom_section) do
    click_on link
  end
end