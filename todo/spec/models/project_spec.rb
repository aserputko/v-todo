require 'spec_helper'

describe Project do

  it "has a valid factory" do
  	FactoryGirl.create(:project).should be_valid
  end

  it "is invalid without a name" do
  	FactoryGirl.build(:project, name: nil).should_not be_valid
  end

end
