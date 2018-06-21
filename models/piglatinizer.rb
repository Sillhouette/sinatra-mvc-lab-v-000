class PigLatinizer
  attr_reader :text

  def initialize(text)
    #binding.pry
    @text = text
  end

  def pig_latinize
    array = @text.split(" ")
    latinized = array.map { |word|
      puts "#{word.split("").unshift(word.pop)} - "
    }
    latinized.join("")
    #binding.pry
    #{}"#{last_to_first}ay"
  end

end
