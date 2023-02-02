require "practice"
require "rspec"
require 'spec_helper'

describe "#my_uniq" do
    # context "the method should removes duplicates from an array"
    it "should return an array with only unique elements" do
        expect([1,3,3,5].my_uniq).to eq([1,3,5])
    end
end

describe "#two_sum" do
    it "should find all pairs of positions where the elements at those positions sum to zero" do
        expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
    end

end