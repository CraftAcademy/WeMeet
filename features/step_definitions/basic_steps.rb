Given("I visit the site") do
  visit root_path
end

When("I click {string}") do |link|
  click_on link
end
  
When("I fill in {string} with {string}") do |element, value|
  fill_in element, with: value
end