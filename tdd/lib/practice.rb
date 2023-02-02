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
