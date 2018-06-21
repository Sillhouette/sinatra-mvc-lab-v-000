class PigLatinizer
  attr_reader :text

  def initialize(text)
    #binding.pry
    @text = text
  end

  def pig_latinize
    array = @text.split(" ")
    latinized_array = array.map { |word|
      moldable = word
      first_letter = moldable.split("").shift
      first_to_last = word.split("").push(first_letter)
      first_to_last.shift
      "#{first_to_last.join("")}ay"
    }
    latinized_string = latinized_array.join(" ")
    latinized_string
  end

end
