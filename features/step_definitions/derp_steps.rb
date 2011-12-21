Given /^I am a bug$/ do
end

When /^I get "([^"]*)"$/ do |arg1|
  aget '/'
  em_async_continue
end

Then /^I should asplode$/ do
  last_response.body.should == "hello"
end

