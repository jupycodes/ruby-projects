require_relative "board"
require_relative "player"

class Battleship

    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = @board.size / 2
    end

    def start_game
        @board.place_random_ships
        puts "There are " + (@board.size / 4).to_s + " ships"
        @board.print
    end

    def lose?
        if @remaining_misses > 0
            false
        else 
            puts "you lose"
            true
        end
    end

    def win?
        if @board.num_ships == 0
            puts "you win"
            true
        else
            false
        end
    end

    def game_over?
        if win? || lose?
            true
        else
            false
        end
    end

    def turn ## this needs some work, when a an incorrect pos is entered, need to enter a correct pos twice after that
        pos = @player.get_move
        if pos[0] < @board.length && pos[1] < @board.length
            if !@board.attack(pos)
                @remaining_misses -= 1
            end
        else 
            puts "incorrect position"
            @board.print
            puts "You have " + @remaining_misses.to_s + " misses left"
            pos = @player.get_move
        end

        @board.print
        puts "You have " + @remaining_misses.to_s + " misses left"
    end

end
