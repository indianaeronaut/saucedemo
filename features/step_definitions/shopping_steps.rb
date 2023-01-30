Given('I am on checkout information page') do
    visit(LoginPage)
end

When('I checkout with all the correct details') do
    navigate_to(CheckoutOverveiw).complete_order
end
  
Then('I should be able to complete the order successfully with {string} message') do |msg|
    expect(on(CheckoutComplete).message).to eq(msg)
end

When('I checkout with a missing field {string}') do |with_empty_field|
    navigate_to(CheckoutInfoPage).checkout({with_empty_field => ''})
end

Then('I should see {string}') do |error_msg|
    expect(on(CheckoutInfoPage).error_message).to eq(error_msg)
end
