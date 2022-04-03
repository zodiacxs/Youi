And(/^user clicks the register button$/) do
  $user = HomePage.new()
  $user.register_btn.click
end

And(/^user lands on the register page$/) do
  expect($browser.url == "http://demowebshop.tricentis.com/register").to be true
end

And(/^user enters first name$/) do
  $user = RegisterPage.new()
  $user.firstNameField.send_keys "Test"
end

And(/^user enters last name$/) do
  $user.lastNameField.send_keys "Test"
end

And(/^user enters email address$/) do
  $user.emailField.send_keys "Test@test.test"
end

When(/^user enters password with only numbers$/) do
  $user.passwordField.send_keys "123456"
end

And(/^user pressed tab$/) do
  $user.passwordField.send_keys :tab
end

Then(/^a 'Password too weak' warning should be displayed$/) do
  expect($user.passwordFieldWarning.present?).to be true
  expect($user.passwordFieldWarning.text == "Password too weak").to be true
end

When(/^user enters a strong password$/) do
  $user.passwordField.send_keys "03@Apr2022"
end

Then(/^no warning should be displayed$/) do
  expect($user.passwordFieldWarning.present?).to be false
end