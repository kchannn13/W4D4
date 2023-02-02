class Array

    def my_uniq
        arr = []
        self.each do |num|
            arr << num if !arr.include?(num)
        end
        return arr
    end

    def two_sum
        
        arr = []
        self.each.with_index do |n, i|
            self.each.with_index do |n2, i2|
                if i2 > i && n + n2 == 0
                    arr << [i, i2]
                end
            end
        end

        return arr

    end

    def my_transpose

        new_arr = []

        (0...self.length).each do |col_idx|
            col = []
            self.each do |row|
                col << row[col_idx]
            end
            new_arr << col
        end
        new_arr
    end

end

def stock_picker(arr)
    max_profit = 0
    max_idx = []

    arr.each.with_index do |day_price, day1|
        day2 = day1 + 1
        while day2 < arr.length
            if arr[day2] - day_price > max_profit
                max_profit = arr[day2] - day_price
                max_idx = [day1, day2]
            end
            day2 += 1
        end
    end
    max_idx
end

class HanoiTowers

    attr_reader :stack_1, :stack_2, :stack_3, :start, :legend

    def initialize(num = 4)
        @stack_1 = []
        (1..num).each {|n| @stack_1 << n}
        @stack_2 = []
        @stack_3 = []
        @start = @stack_1.dup
        @legend = {1 => @stack_1, 2 => @stack_2, 3 => @stack_3}
    end

    def move(n1, n2)
        if legend[n1].length == 0
            raise ArgumentError.new
        end
        if legend[n1].length == 0 && legend[n2].empty?
            raise ArgumentError.new
        end
        if !legend[n2].first.nil?
            if self.legend[n2].first < legend[n1].first
                raise ArgumentError.new
            end
        end

        self.legend[n2].unshift(self.legend[n1].shift)

    end

    def won?
        self.stack_3 == self.start
    end

end
