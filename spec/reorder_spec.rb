require 'reorder'

describe "reorder" do
	# 'from' out of range
	it "Should return nil if 'from' is out of range" do
		array = ['a']
		array.reorder(1, 0).should == nil
	end
	it "Should return nil if 'from' is out of range" do
		array = ['a']
		array.reorder(-2, 0).should == nil
	end

	# 'to' out of range
	it "Should return nil if 'to' is out of range" do
		array = ['a']
		array.reorder(0, 1).should == nil
	end
	it "Should return nil if 'to' is out of range" do
		array = ['a']
		array.reorder(0, -2).should == nil
	end

	# 'from' and 'to' out of range
	it "Should return nil if 'from' and 'to' are out of range" do
		array = ['a']
		array.reorder(1, -2).should == nil
	end

	# one array element, 'from' and 'to' must be identical
	it "Should reorder(0, 0) the elements in an array with one element" do
		array = ['a']
		array.reorder(0, 0).should == ['a']
	end
	it "Should reorder(-1, -1) the elements in an array with one element" do
		array = ['a']
		array.reorder(-1, -1).should == ['a']
	end

	# two array elements, 'from' and 'to' identical
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

	# two array elements, 'from' and 'to' different
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

	# three array elements, first to second
	it "Should reorder(0, 1) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(0, 1).should == ['b', 'a', 'c']
	end
	it "Should reorder(-3, -2) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(-3, -2).should == ['b', 'a', 'c']
	end

	# three array elements, first to third
	it "Should reorder(0, 2) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(0, 2).should == ['b', 'c', 'a']
	end
	it "Should reorder(-3, -1) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(-3, -1).should == ['b', 'c', 'a']
	end

	# three array elements, second to first
	it "Should reorder(1, 0) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(1, 0).should == ['b', 'a', 'c']
	end
	it "Should reorder(-2, -3) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(-2, -3).should == ['b', 'a', 'c']
	end

	# three array elements, second to third
	it "Should reorder(1, 2) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(1, 2).should == ['a', 'c', 'b']
	end
	it "Should reorder(-2, -1) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(-2, -1).should == ['a', 'c', 'b']
	end

	# three array elements, third to first
	it "Should reorder(2, 0) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(2, 0).should == ['c', 'a', 'b']
	end
	it "Should reorder(-1, -3) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(-1, -3).should == ['c', 'a', 'b']
	end

	# three array elements, third to second
	it "Should reorder(2, 1) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(2, 1).should == ['a', 'c', 'b']
	end
	it "Should reorder(-1, -2) the elements in an array with three elements" do
		array = ['a', 'b', 'c']
		array.reorder(-1, -2).should == ['a', 'c', 'b']
	end

	# four array elements, first to second
	it "Should reorder(0, 1) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(0, 1).should == ['b', 'a', 'c', 'd']
	end
	it "Should reorder(-4, -3) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-4, -3).should == ['b', 'a', 'c', 'd']
	end

	# four array elements, first to third
	it "Should reorder(0, 2) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(0, 2).should == ['b', 'c', 'a', 'd']
	end
	it "Should reorder(-4, -2) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-4, -2).should == ['b', 'c', 'a', 'd']
	end

	# four array elements, first to fourth
	it "Should reorder(0, 3) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(0, 3).should == ['b', 'c', 'd', 'a']
	end
	it "Should reorder(-4, -1) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-4, -1).should == ['b', 'c', 'd', 'a']
	end

	# four array elements, second to first
	it "Should reorder(1, 0) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(1, 0).should == ['b', 'a', 'c', 'd']
	end
	it "Should reorder(-3, -4) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-3, -4).should == ['b', 'a', 'c', 'd']
	end

	# four array elements, second to third
	it "Should reorder(1, 2) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(1, 2).should == ['a', 'c', 'b', 'd']
	end
	it "Should reorder(-3, -2) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-3, -2).should == ['a', 'c', 'b', 'd']
	end

	# four array elements, second to fourth
	it "Should reorder(1, 3) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(1, 3).should == ['a', 'c', 'd', 'b']
	end
	it "Should reorder(-3, -1) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-3, -1).should == ['a', 'c', 'd', 'b']
	end

	# four array elements, third to first
	it "Should reorder(2, 0) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(2, 0).should == ['c', 'a', 'b', 'd']
	end
	it "Should reorder(-2, -4) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-2, -4).should == ['c', 'a', 'b', 'd']
	end

	# four array elements, third to second
	it "Should reorder(2, 1) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(2, 1).should == ['a', 'c', 'b', 'd']
	end
	it "Should reorder(-2, -3) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-2, -3).should == ['a', 'c', 'b', 'd']
	end

	# four array elements, third to fourth
	it "Should reorder(2, 3) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(2, 3).should == ['a', 'b', 'd', 'c']
	end
	it "Should reorder(-2, -1) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-2, -1).should == ['a', 'b', 'd', 'c']
	end

	# four array elements, fourth to first
	it "Should reorder(3, 0) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(3, 0).should == ['d', 'a', 'b', 'c']
	end
	it "Should reorder(-1, -4) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-1, -4).should == ['d', 'a', 'b', 'c']
	end

	# four array elements, fourth to second
	it "Should reorder(3, 1) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(3, 1).should == ['a', 'd', 'b', 'c']
	end
	it "Should reorder(-1, -3) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-1, -3).should == ['a', 'd', 'b', 'c']
	end

	# four array elements, fourth to third
	it "Should reorder(3, 2) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(3, 2).should == ['a', 'b', 'd', 'c']
	end
	it "Should reorder(-1, -2) the elements in an array with four elements" do
		array = ['a', 'b', 'c', 'd']
		array.reorder(-1, -2).should == ['a', 'b', 'd', 'c']
	end

end
