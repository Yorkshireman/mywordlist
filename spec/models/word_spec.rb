require 'rails_helper'

RSpec.describe Word, type: :model do
  
	it "has a valid factory" do 
		expect(FactoryGirl.create(:word)).to be_valid
	end

	it "is invalid without a title" do 
		expect(FactoryGirl.build(:word, title: nil)).to be_invalid
	end

	it "is valid without a description" do 
		expect(FactoryGirl.create(:word, description: nil)).to be_valid
	end

end
