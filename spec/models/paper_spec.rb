require 'spec_helper'

describe Paper do
  it "can be found by tag" do
    p = Paper.new
    p.tags = "{one, two}"
    Paper.find_by_tag(["one", "three"]).should == [p]
  end
end



