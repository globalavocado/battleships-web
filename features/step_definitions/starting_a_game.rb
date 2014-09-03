# Given(/^I follow "new game"$/) do 
#   pending # express the regexp above with the code you wish you had
# end

When(/^the name field is blank$/) do
  fill_in('name', :with => '')
end

When(/^the submit button has been clicked$/) do
	click_button('submitbutton')
end

Then(/^I should see an error message$/) do
 	expect(page).to have_content("you must enter a name")
end