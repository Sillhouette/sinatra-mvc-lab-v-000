class PigLatinizer
  attr_reader :text

  initialize(text)
    @text = text
  end

  def pig_latinize
    array = @text.to_a
    last_to_first = array.unshift(array.pop).join("")
    binding.pry
    "#{last_to_first}ay"
  end

end
