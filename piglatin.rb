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

    # if the word was capitalized, upcase the first letter

    if num
      num[1..-1].capitalize!
    elsif capped
      puts capped
    else
      word[length..-1] + suffix
    end
  end
end
