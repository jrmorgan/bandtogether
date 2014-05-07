require 'spec_helper'

describe Membership do
  before(:each) do
  	@membership = Membership.new(:user => mock_model('User'), :project => mock_model('Project'))
  end

  it "is valid with valid attributes" do
  	@membership.should be_valid
  end

  it "is not valid without a project" do
  	@membership.project = nil
  	@membership.should_not be_valid
  end

  it "is not valid without a user" do
  	@membership.user = nil
  	@membership.should_not be_valid
  end
end
