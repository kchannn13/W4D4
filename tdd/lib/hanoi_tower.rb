require_relative "practice.rb"

class Game
    attr_reader :tower
    def initialize(n = nil)
        @tower = HanoiTowers.new(n)
    end

    def render
        puts tower.stack_1
        puts tower.stack_2
        puts tower.stack_3
    end

    def start
        render
        first_tower = gets.chomp.to_i
        second_tower = gets.chomp.to_i
        third_tower = gets.chomp.to_i
    end
end