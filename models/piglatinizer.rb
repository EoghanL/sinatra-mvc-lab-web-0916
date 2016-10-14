class PigLatinizer

  attr_accessor :text, :holder_array

  # def initialize(text)
  #   @text = text
  #   @holder_array = @text.split(" ")
  # end

  def piglatinize(word)
    if check_vowel(word[0])
      word + "way"
    else
      temp_arr = word.split('')
      temp_arr << temp_arr.shift until check_vowel(temp_arr[0])
      temp_arr.join + "ay"
    end
  end


  def to_pig_latin(string)
    string.split(" ").map { |word| piglatinize(word) }.join(" ")
  end

  def check_vowel(lttr)
    lttr.downcase == "a" || lttr.downcase == "e" || lttr.downcase == "i" || lttr.downcase == "o" || lttr.downcase == "u"
  end
end




def rearrange(split_word_array)

  if split_word_array.first
    split_word_array.join + "way"
  else
    split_word_array << split_word_array.shift
    split_word_array.join + "ay"
  end
end

def return_phrase
  @holder_array.map do |words|
    rearrange(words.split(''))
  end
end
