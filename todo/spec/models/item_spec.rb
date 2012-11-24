require 'spec_helper'

describe Item do
	it { should belong_to(:project) }
	it "has a valide factory" do
		FactoryGirl.create(:item).should be_valid
	end
	it "is invalid without a name" do
		FactoryGirl.build(:item, name: nil, status: false, project_id: 1).should_not be_valid
	end
	it "is invalid without a project_id" do
		FactoryGirl.build(:item, name: "MyString", status: false, project_id: nil).should_not be_valid
	end
end
