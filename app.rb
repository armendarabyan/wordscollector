require "highline/import"
require "./activerecord/words"
require "./app/filereader"
require "./app/filterwords"


class Application
  def start
    reader = FileReader.new
    filter = FilterWords.new

    new_symbols = reader.read('sub.srt')

    filtered_symbols = filter.filter new_symbols
    filtered_symbols.uniq!

    filtered_symbols.each do |word_from_db|
      print word_from_db + " (y/n)?"

      str = get_single_char

      #str = 'q'
      if str == 'x'
        break
      elsif str == 'y'
        filter.yes(word_from_db)
      elsif str == 'n'
        filter.no(word_from_db)
      elsif str == 'q'
        unknown_words = filter.showno()
        unknown_words.each do |nword|
          puts nword.name
        end
      end
    end
  end

  def testfunction
  end

  def get_single_char
    tty_param = `stty -g`
    system 'stty raw -echo'

    str = IO.read '/dev/stdin', 1

    system "stty #{tty_param}"
    print " " + str + "\n"
    return str
  end
end


Application.new.start
