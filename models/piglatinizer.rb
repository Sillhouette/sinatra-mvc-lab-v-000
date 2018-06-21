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
      first_to_last = word.split("").push(first_letter)
      first_to_last.shift
      "#{first_to_last.join("")}ay"
    }
    changed_array = latinized.join(" ")
    puts changed_array

    #binding.pry
    #{}"#{last_to_first}ay"
  end

end
