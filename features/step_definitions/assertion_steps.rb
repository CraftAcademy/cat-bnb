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

Then("I should be on the {string} listing page") do |listing_name|
  name = Listing.find_by(pet_name: listing_name)
  expect(current_path).to eq listing_path(name)
end

Then("I should be on Create profile page") do
  expect(current_path).to eq new_profile_path 
end


Then("I should be on the Log in page") do 
  expect(current_path).to eq new_user_session_path
end

Then("I should not see {string}") do |content|
  expect(page).to have_no_content content  
end