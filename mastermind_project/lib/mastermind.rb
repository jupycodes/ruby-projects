require_relative "code"

class Mastermind

    def initialize(num)
        @secret_code = Code.random(num)
    end

    def print_matches(guess_code)
        puts "exact matches: #{@secret_code.num_exact_matches(guess_code)}"
        puts "near matches: #{@secret_code.num_near_matches(guess_code)}"
    end

    def ask_user_for_guess
        puts "Enter a code: "
        guess_code = Code::from_string(gets.chomp)
        print_matches(guess_code)
        @secret_code == guess_code
    end


end
