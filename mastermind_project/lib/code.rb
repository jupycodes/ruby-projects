class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(chars)
    chars.all? {|char| Code::POSSIBLE_PEGS.include?(char.upcase)}
  end

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)
    else
      raise_error
    end
  end

  def pegs
    @pegs
  end

  def self.random(len)
    chars = Array.new(len) { Code::POSSIBLE_PEGS.keys.sample }
    Code.new(chars)
  end

  def self.from_string(pegs)
    peg_array = pegs.split("")
    Code.new(peg_array)
  end

  def [](idx)
    @pegs[idx]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess)
    (0...guess.length).count { |i| guess[i] == @pegs[i]}
  end

  def num_near_matches(guess)
    count = 0
    (0...guess.length).each do |i|
      if guess[i] != self[i] && self.pegs.include?(guess[i])
        count +=1
      end
    end
    count
  end

  def ==(guess)
    self.pegs == guess.pegs
  end

end
