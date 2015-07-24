require './app/inputhelper'
require './app/filterwords'
require './app/translate'

class Addwords
  include InputHelper
  def start
    translator = TranslationApi.new
    str = getstring

    filter = FilterWords.new
    if !filter.exist_in_unknown?(str)
      puts "translation - " + translator.translate(str)
      Words.create(name:str.downcase, status: 0)
    end
  end
end

words = Addwords.new

words.start
