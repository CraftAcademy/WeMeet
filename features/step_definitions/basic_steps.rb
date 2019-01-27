When("I visit the landing page") do
    visit root_path
end

Given("the following events exist") do |table|
    table.hashes.each do |event|
        FactoryBot.create(:event, event)
    end
end
  