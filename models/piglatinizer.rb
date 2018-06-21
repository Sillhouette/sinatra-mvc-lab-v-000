class PigLatinizer
  attr_reader :text

  def initialize(text)
    #binding.pry
    @text = text
  end

  def pig_latinize
    array = @text.split(" ")
    latinized = array.map { |word|
      moldable = word
      first_letter = moldable.split("").shift
      puts moldable
      first_to_last = word.split("").push(first_letter)
      first_to_last.shift
      puts "#{first_to_last.join("")}ay"
    }
    latinized.join("")
    puts latinized
    #binding.pry
    #{}"#{last_to_first}ay"
  end

end
