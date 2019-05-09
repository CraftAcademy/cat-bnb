Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} link") do |link|
  expect(page).to have_link(link)
end

Then("I should see {string} within {string} section") do |content, section|
  name = Listing.find_by(pet_name: section)
  dom_section = "#listing_#{name.id}"
  within(dom_section) do
    expect(page).to have_content content
  end
end

Then("I should see {string} button") do |button|
  expect(page).to have_button(button)
end

Then("I should be on landing page") do
  expect(current_path).to eq root_path
end

Then("I should be on the {string} listing page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
