require 'spec_helper'

describe FollowEvent do

  before do
    @bob = User.create(:name => "Bob")
    @bill = User.create(:name => "Bill")
  end

  it "Should create Bob and Bill and test their association" do
    @bob.targets << @bill
    @bob.targets.should == [@bill]
    @bill.followers.should == [@bob]
  end

end
