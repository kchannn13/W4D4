require "practice"

describe "#my_uniq" do
    context "the method should removes duplicates from an array"
    it "should return an array with only unique elements" do
        expect([1,3,3,5]).to eq([1,3,5])
    end
end