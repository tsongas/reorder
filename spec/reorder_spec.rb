require 'reorder'

describe "reorder" do
	it "Should return nil if the source is out of range" do
		array = ['a']
		expect { array.reorder(1, 0) }.should == nil
	end
	it "Should return nil if the source is out of range" do
		array = ['a']
		expect { array.reorder(-2, 0) }.should == nil
	end

	it "Should return nil if the destination is out of range" do
		array = ['a']
		expect { array.reorder(0, 1) }.should == nil
	end
	it "Should return nil if the destination is out of range" do
		array = ['a']
		expect { array.reorder(0, -2) }.should == nil
	end

	it "Should return nil if the source and destination are out of range" do
		array = ['a']
		expect { array.reorder(1, -2) }.should == nil
	end

	it "Should reorder the elements in an array with one element" do
		array = ['a']
		array.reorder(0, 0).should == ['a']
	end
	it "Should reorder the elements in an array with one element" do
		array = ['a']
		array.reorder(-1, -1).should == ['a']
	end

	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(0, 0).should == ['a', 'b']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-2, -2).should == ['a', 'b']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(1, 1).should == ['a', 'b']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-1, -1).should == ['a', 'b']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(0, 1).should == ['b', 'a']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-2, -1).should == ['b', 'a']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(1, 0).should == ['b', 'a']
	end
	it "Should reorder the elements in an array with two elements" do
		array = ['a', 'b']
		array.reorder(-1, -2).should == ['b', 'a']
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
