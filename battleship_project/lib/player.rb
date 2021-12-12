class Player

    def get_move
        print "enter a position with coordinates separated with a space like `4 7`: "
        arr = gets.chomp.split(" ")
        new_arr =[]
        arr.each {|ele| new_arr << ele.to_i}
        return new_arr
    end

end
