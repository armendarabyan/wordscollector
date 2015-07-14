require './activerecord/words'

class FilterWords
  def filter(words)
    a = []
    words.each do |word|
      if not exist?(word)
        a.push(word)
      end
    end

    return a
  end

  def exist?(word)
    Words.exists?(name: word)
  end

  def yes(word)
    Words.create(name:word, status: 1)
  end

  def no(word)
    Words.create(name:word, status: 0)
  end

  def showno
    Words.where(status: 0);
  end
  
end
