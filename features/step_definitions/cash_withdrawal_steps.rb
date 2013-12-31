class Account
  def deposit
    
  end
end

Given(/^I have deposited \$(\d+) in my account$/) do |amount|
  my_amount = Account.new
  my_amount.deposit(amount.to_i)
end

When(/^I request \$(\d+)$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^\$(\d+) should be dispensed$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end
