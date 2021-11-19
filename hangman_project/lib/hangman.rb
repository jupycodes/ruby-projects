class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length, "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word 
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    if @attempted_chars.include?(char)
      return true
    end
    return false
  end

  def get_matching_indices(char)
    new_arr = []
    @secret_word.each_char.with_index do |corr_char, i|
      new_arr << i if corr_char == char
    end
    new_arr
  end
    
  def fill_indices(char, array)
    array.each do |ele|
      @guess_word[ele] = char
    end
  end

  def try_guess(char)
    if self.already_attempted?(char)
      puts "that has already been attempted"
      return false
    end
      
    @attempted_chars << char
   
    if self.get_matching_indices(char).length > 0
      self.fill_indices(char,self.get_matching_indices(char))
    else
      @remaining_incorrect_guesses -= 1
    end    

    true
  end

  def ask_user_for_guess
    puts "Enter a char: "
    user_guess = gets.chomp

    try_guess(user_guess)
  end

  def win?
    if @guess_word.join == @secret_word
      puts "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word
      return true
    end

    false
  end

end

