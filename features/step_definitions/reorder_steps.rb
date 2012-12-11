require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'reorder')

Given /^I have an array with five elements a, b, c, d and e$/ do
  @array = ['a', 'b', 'c', 'd', 'e']
end

When /^I move the first element to the position of the third element$/ do
  @array.reorder(0, 2)
end

Then /^the result returned should be an array with elements b, c, a, d, e$/ do
  @array.should == ['b', 'c', 'a', 'd', 'e']
end

When /^I move the fifth element to the position of the third element$/ do
  @array.reorder(4, 2)
end

Then /^the result returned should be an array with elements a, b, e, c, d$/ do
  @array.should == ['a', 'b', 'e', 'c', 'd']
end