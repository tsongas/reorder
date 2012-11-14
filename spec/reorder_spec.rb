require 'reorder'

describe "reorder" do
	it "Should throw an error if the origin is out of range" do
		array = ['a']
		expect { array.reorder(1, 0) }.to raise_error(RuntimeError, /Origin is out of range./)
	end

	it "Should throw an error if the destination is out of range" do
		array = ['a']
		expect { array.reorder(0, 1) }.to raise_error(RuntimeError, /Destination is out of range./)
	end

	it "Should reorder the elements in an array with one element" do
		array = ['a']
		array.reorder(0, 0).should == ['a']
	end

	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(0, 0).should == ['a', 'b']
	end

	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(1, 0).should == ['b', 'a']
	end

	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(0, 1).should == ['b', 'a']
	end

	it "Should reorder the elements in an array with more than two elements" do
		array = ['a', 'b', 'c']
		array.reorder(0, 1).should == ['b', 'a', 'c']
	end

	it "Should reorder the elements in an array with more than two elements" do
		array = ['a', 'b', 'c']
		array.reorder(0, 2).should == ['b', 'c', 'a']
	end

	it "Should reorder the elements in an array with more than two elements" do
		array = ['a', 'b', 'c']
		array.reorder(1, 0).should == ['b', 'a', 'c']
	end

	it "Should reorder the elements in an array with more than two elements" do
		array = ['a', 'b', 'c']
		array.reorder(1, 2).should == ['a', 'c', 'b']
	end

	it "Should reorder the elements in an array with more than two elements" do
		array = ['a', 'b', 'c']
		array.reorder(2, 0).should == ['c', 'a', 'b']
	end

	it "Should reorder the elements in an array with more than two elements" do
		array = ['a', 'b', 'c']
		array.reorder(2, 1).should == ['a', 'c', 'b']
	end
end
