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

describe "#my_transpose" do
    context "it should opperate on a 2-D array"
    it "should return a new 2-D array of where the inner index are the new outer index" do
        rows = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8]
        ]
        cols = [
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
        ]
        expect(rows.my_transpose).to eq(cols)
    end
end

describe "stock_picker()" do
    it "should take an array as a argument" do
        expect{stock_picker([1,2,3])}.to_not raise_error
    end
    it "should return the two indexes for the most profit. Buy, sell." do 
        expect(stock_picker([44,19,6,20,45,66,50,3])).to eq([2,5])
    end
end


describe HanoiTowers do
    subject(:game) { |game| game = HanoiTowers.new}
    
    # let(:winning_game) do 

    #     allow(winning_game).to receive(:start).and_return([1,2,3,4])
    #     allow(:winning_game).to receive(:stack_3).and_return([1,2,3,4])

    # end
    
    # let(:winning_game) do |winning_game|

    #     winning_game = HanoiTowers.new
    #     allow(:winning_game).to receive(:stack_3).and_return([1,2,3,4])

    # end
    # allow(:winning_game).to receive(:stack_3).and_return([1,2,3,4])
    
    describe "#initialize" do 
        it "should have 3 arrays" do
            game = HanoiTowers.new
            expect(game.stack_1).to be_a(Array)
            expect(game.stack_2).to be_a(Array)
            expect(game.stack_3).to be_a(Array)
        end
        it "should set stack_1 starting size to be 4 if no argument is passed during initaliztion" do
            game = HanoiTowers.new
            expect(game.stack_1.length).to eq(4)
        end
        it "should accept a number during a initialization to set initial stack_1 size" do
            game = HanoiTowers.new(8)
            expect(game.stack_1.length).to eq(8)
        end

    end

    describe "#won?" do

        it "should return true when all elements are in stack_3 and in correct order" do        
            expect(winning_game.won?).to be_truthy
            expect(winning_game.stack_3).to eq([1,2,3,4])
            
        end

        it "should return false when all elements are not in stack_3 and not in correct order" do        
            expect(game.won?).to be_falsey
            expect(game.stack_3).to_not eq([1,2,3,4])
            
        end
    end
end