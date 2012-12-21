require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'reorder')

Given /^I have an array with five elements a, b, c, d and e$/ do
  @array = ['a', 'b', 'c', 'd', 'e']
end

When /^I make a copy with the first element moved to the position of the third element$/ do
  @result = @array.reorder(0, 2)
end

Then /^the result returned should be a new array with elements b, c, a, d, e$/ do
  @result.should == ['b', 'c', 'a', 'd', 'e']
end

When /^I make a copy with the fifth element moved to the position of the third element$/ do
  @result = @array.reorder(4, 2)
end

Then /^the result returned should be a new array with elements a, b, e, c, d$/ do
  @result.should == ['a', 'b', 'e', 'c', 'd']
end

When /^I move in place the first element to the position of the third element$/ do
  @array.reorder!(0, 2)
end

Then /^the result returned should be the original array with elements b, c, a, d, e$/ do
  @array.should == ['b', 'c', 'a', 'd', 'e']
end

When /^I move in place the fifth element to the position of the third element$/ do
  @array.reorder!(4, 2)
end

Then /^the result returned should be the original array with elements a, b, e, c, d$/ do
  @array.should == ['a', 'b', 'e', 'c', 'd']
end