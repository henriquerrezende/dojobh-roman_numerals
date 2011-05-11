require 'roman_number.rb'

describe RomanNumber do

	before(:each) do
		@romanNumber = RomanNumber.new 'MXMIII'
		@fakeRomanNumber = RomanNumber.new 'MXM3'
	end

	it "should return a roman number"  do
		@romanNumber.value.should == 'MXMIII'
	end

	it "should have valid characters" do
		@romanNumber.haveValidCharacteres?.should be_true
		@fakeRomanNumber.haveValidCharacteres?.should be_false
	end
	
	it "shold return expected groups" do 
		expectedGroup = ['M', 'XM', 'I', 'I', 'I']
		@romanNumber.group.should == expectedGroup
	end
	
end