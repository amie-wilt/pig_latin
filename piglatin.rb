class PigLatin

  def initialize

  end

  def self.translate(word)
    if word[0] == "h"
      newWord = word.split
      newWord.push(newWord.shift) + "ay"
    end
  end
end

