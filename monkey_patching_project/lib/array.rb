# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
      return nil if self.empty?
        span = self.max - self.min
    end

    def average
        if self.length > 0
            self.sum / self.length.to_f
        end
    end

    def median
        self.sort!
        if !self.length.even? && self.length > 0
            self[self.length / 2]
        elsif self.length.even? && self.length > 0
            (self[self.length/2] + self[self.length/2 - 1]) / 2.to_f
        end
    end

    def counts
        hash = Hash.new(0)
        self.each { |ele| hash[ele] += 1 }
        hash
    end

    def my_count(num)
        count = 0
        self.each { |ele| count +=1 if ele == num }
        count
    end

    def my_index(value)
        self.each_with_index do |ele, i|
            if value == ele 
                return i
            end
        end
        return nil
    end

    def my_uniq
        self.counts.keys
    end

    def my_transpose
        new_arr = []
        self.each { |ele| new_arr << [] }
        self.each_with_index do |row, row_idx|
            row.each_with_index do |col, col_idx|
                new_arr[row_idx][col_idx] = self[col_idx][row_idx]
            end
        end
        new_arr
    end

  end





  
