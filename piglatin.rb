class PigLatin

  def self.translate(phrase)
    phrase.split.map { |word| translate_word(word) }.join(' ')
  end

  def self.translate_word(word)

    capped = word =~ /[A-Z]/
    num = word =~ /[0-9]/

    length = word.index(/[aeiou]/)
    prefix = word.slice(0, length)
    suffix = length == 0 ? 'yay' : prefix + 'ay'
    suffix.downcase!

    if num # if word is a number
      word # return the word unmodified => number
    else
      if capped # but if it's capped
        new_word = word[length..-1] + suffix
        new_word[0] = new_word[0].upcase! # upcase first letter of the translated word
        new_word # return the new word with first letter upcased
      else # if it's not capped
        word[length..-1] + suffix # return the unmodified translated word
      end
    end
  end
end
