class PigLatinizer
  attr_reader :text

  def initialize(text)
    #binding.pry
    @text = text
  end

  def pig_latinize
    array = @text.split(" ")
    puts array
    latinized = array.map { |word|
      puts "#{word.split("").unshift(array.pop).join("")}ay"
      "#{word.split("").unshift(array.pop).join("")}ay"
    }
    latinized.join("")
    #binding.pry
    #{}"#{last_to_first}ay"
  end

end
