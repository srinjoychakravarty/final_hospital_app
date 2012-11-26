Given /^an initial business$/ do
  @talal = FactoryGirl.create(:doctor)
  
  @srinjoy = FactoryGirl.create(:patient)

  @ill_srinjoy = FactoryGirl.create(:appointment)
  
 
end

Given /^I am on the 'New Doctor' page$/ do
  visit new_doctor_path
end

When /^I enter "(.*?)" for "(.*?)"$/ do |value, field|
  fill_in field, :with => value
end

When /^I select "(.*?)" for "(.*?)"$/ do |value, field|
 select value, :from => field
end

When /^I check the "(.*?)" box$/ do |check_box_name|
  check check_box_name
end

When /^I click the "(.*?)" button$/ do |buttonname|
  click_button buttonname
end

Then /^I should get to see "(.*?)"$/ do |value|
  page.should have_content value
end

Given /^I am on the 'doctors' page$/ do
  visit doctors_path
end

Then /^for the "(.*?)", I should see "(.*?)"$/ do |csstag, textvalue|
  page.should have_css(csstag, :text => textvalue)
end

Then /^for the "(.*?)", I should see a link to "(.*?)"$/ do |csstag, textvalue|
  within csstag do
    page.should have_link textvalue
  end
end

#When /^I follow the "(.*?)" link for "(.*?)"$/ do |crud_link, cell_name|
 # find(:xpath, "//tr[contains(.,'#{cell_name}')]").click_link crud_link
#end

When /^I follow the "(.*?)" link for "(.*?)"$/ do |crud_link, cell_value|
  within_table('Doctor List') do
    within('tr', :text => cell_value) do
      find('a', :text => crud_link).click
    end
  end    
end

When /^I change the email address to "(.*?)"$/ do |newmail|
   fill_in "Email", :with => newmail
end








