When("I visit the landing page") do
    visit root_path
end

Given("the following events exists") do |table|
    table.hashes.each do |event|
        Event.create!(event)
    end
end
  