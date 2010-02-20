require 'spec_helper'

describe Person do
  dataset :people

  before(:each) do
    @valid_attributes = Person.plan
  end

  it "should create a new instance given valid attributes" do
    Person.create!(@valid_attributes)
  end

  it "" do
    Person.count.should > 0
  end
end
