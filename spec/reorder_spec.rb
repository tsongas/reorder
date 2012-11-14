require 'reorder'

describe "reorder" do
	it "Should reorder the elements in an array" do
		array = ['a', 'b', 'c']
		array.reorder(1, 0).should == ['b', 'a', 'c']
	end
end
