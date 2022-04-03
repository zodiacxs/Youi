And(/^user selects APPAREL & SHOES$/) do
  $user = HomePage.new()
  $user.apparelAndShoes_btn.click
end

And(/^user lands on the APPAREL & SHOES page$/) do
  expect($browser.url == "http://demowebshop.tricentis.com/apparel-shoes").to be true
end

When(/^the item "([^"]*)" is "([^"]*)"$/) do |item, stockAvailability|
  $item = item
end

Then(/^the add to cart button should be "([^"]*)"$/) do |button_State|
  button = $browser.div(xpath: "//*[text() = '#{$item}']//parent::h2//parent::div//descendant::div[@class='buttons']").input(type: "button")
  if button_State == "displayed"
    expect(button.present?).to be true
  end
  if button_State == "hidden"
    expect(button.present?).to be false
  end
end