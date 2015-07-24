require './activerecord/words'

class FilterWords
  def filter(words)
    a = []
    words.each do |word|
      if not exist?(word)
        a.push(word.downcase)
      end
    end

    return a
  end

  def exist?(word)
    Words.exists?(name: word.downcase)
  end

  def exist_in_unknown?(word)
    Words.exists?(name: word.downcase, status:1)
  end

  def yes(word)
    Words.create(name:word.downcase, status: 1)
  end

  def no(word)
    Words.create(name:word.downcase, status: 0)
  end

  def showno
    Words.where(status: 0)
  end

  def showyes
    Words.where(status: 1)
  end

end
