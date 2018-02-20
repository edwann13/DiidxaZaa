
Given("That I am on the options page of the dictionary") do
  # set_speed(:slow)

  visit('/words')
  # set_speed(:slow)
  expect(page).to have_content('All')
  expect(page).to have_content('A')
  expect(page).to have_content('H')
  expect(page).to have_content('Z')
end

Then("I click the All option") do
  set_speed(:slow)
  # visit (word_path(:id => 'All'))
  click_link('All')
  sleep 200
  # visit('/word/All')
end

Then("I will see The Fist word with A and the Last word with Z") do
  expect(page).to have_content('Apple')
  expect(page).not_to have_content('Zoo')
end

Then("I click the ,A, option") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I will see no words that the first letter is not ,A,") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click the ,C, option") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I will see no words that the first letter is not ,C,") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click the ,Z, option") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I will see no words that the first letter is not ,Z,") do
  pending # Write code here that turns the phrase above into concrete actions
end