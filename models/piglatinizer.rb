class PigLatinizer
  attr_reader :text

  def initiate(input)
    input.split(" ").length == 1 ? pig_latinize_word(input) : pig_latinize_sentence(input)
    input
  end

  def consonant?(char)
    !char.match(/[aeiouAEIOU]/)
  end

  def pig_latinize_word(word)
    if !consonant(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word = word + "ay"
  end

  def pig_latinize_sentence
    sentence.split.map { |word| pig_latinize_word(word)}.join(" ")
  end

end
