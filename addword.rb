require './app/inputhelper'
require './app/filterwords'
require './app/translate'

class Addwords
  include InputHelper
  def start
    translator = TranslationApi.new
    str = getstring

    filter = FilterWords.new
    if !filter.exist?(str)
      filter.no(str)
      puts "translation - " + translator.translate(str)
    end
  end
end

words = Addwords.new

words.start
