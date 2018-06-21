class PigLatinizer
  attr_reader :text

  def initialize(text)
    #binding.pry
    @text = text
  end

  def pig_latinize
    array = @text.split(" ")
    latinized = array.map { |word|
      first_letter = word.split("").shift
      first_to_last = word.split("").shift.push(first_letter)
      puts "#{first_to_last} - "
    }
    latinized.join("")
    #binding.pry
    #{}"#{last_to_first}ay"
  end

end
