require 'reorder'

describe "reorder" do
	# from out of range
	it "Should return nil if 'from' is out of range" do
		array = ['a']
		array.reorder(1, 0).should == nil
	end
	it "Should return nil if 'from' is out of range" do
		array = ['a']
		array.reorder(-2, 0).should == nil
	end

	# to out of range
	it "Should return nil if 'to' is out of range" do
		array = ['a']
		array.reorder(0, 1).should == nil
	end
	it "Should return nil if 'to' is out of range" do
		array = ['a']
		array.reorder(0, -2).should == nil
	end

	# from and to out of range
	it "Should return nil if 'from' and 'to' are out of range" do
		array = ['a']
		array.reorder(1, -2).should == nil
	end

	# one array element
	it "Should reorder(0, 0) the elements in an array with one element" do
		array = ['a']
		array.reorder(0, 0).should == ['a']
	end
	it "Should reorder(-1, -1) the elements in an array with one element" do
		array = ['a']
		array.reorder(-1, -1).should == ['a']
	end

	# two array elements
	it "Should reorder(0, 0) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(0, 0).should == ['a', 'b']
	end
	it "Should reorder(-2, -2) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-2, -2).should == ['a', 'b']
	end
	it "Should reorder(1, 1) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(1, 1).should == ['a', 'b']
	end
	it "Should reorder(-1, -1) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-1, -1).should == ['a', 'b']
	end
	it "Should reorder(0, 1) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(0, 1).should == ['b', 'a']
	end
	it "Should reorder(-2, -1) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-2, -1).should == ['b', 'a']
	end
	it "Should reorder(1, 0) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(1, 0).should == ['b', 'a']
	end
	it "Should reorder(-1, -2) the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-1, -2).should == ['b', 'a']
	end

	# more than two array elements
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
