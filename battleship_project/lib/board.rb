class Board

    attr_reader :size, :grid, :length
  
    def initialize(n)
        @grid = Array.new(n) {Array.new(n) {:N}}
        @size = n*n
        @length = n
    end

    def [](pos)
        row = pos[0]
        column = pos[1]
        return @grid[row][column]
    end

    def []=(pos, val)
        @grid[pos[0]][pos[1]] = val
    end

    def num_ships
        count = 0
        @grid.each do |sub_arr|
            count += sub_arr.count { |ele| ele == :S }
        end
        count
    end

    def attack(pos)
        if self[pos] == :S 
            self[pos] = :H
            puts "You sunk my battleship!"
            true
        else
            self[pos] = :X
            false
        end
    end

    def place_random_ships
        ships = @size / 4
        while ships > self.num_ships
            row = rand(0...@grid.length)
            col = rand(0...@grid.length)
            @grid[row][col] = :S 
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S 
                    :N 
                else
                    ele
                end
            end
        end
    end

    def self.print_grid(array)
        # array.each do |sub_arr|
        #     puts
        #     sub_arr.each do |ele|
        #         print ele.to_s + " "
        #     end
        # end
        array.each do |row|
            puts row.join(" ")
        end
    end

    def cheat
        Board.print_grid(@grid)
    end
        
    def print
        Board.print_grid(self.hidden_ships_grid)
    end

   
end
