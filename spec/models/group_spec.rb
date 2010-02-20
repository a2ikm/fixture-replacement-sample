require 'spec_helper'

describe Group do
  dataset :groups

  before(:each) do
    @valid_attributes = Group.plan
  end

  it "should create a new instance given valid attributes" do
    Group.create!(@valid_attributes)
  end

  it "" do
    Group.count.should > 0
  end
end
