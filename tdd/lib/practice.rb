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

end