require 'rest-client'
require "./app/filterwords"
require "./app/translate"
require 'json'


translator = TranslationApi.new
words = FilterWords.new.showno()
words.each do |x|
    # x.translated = translator.translate(x.name)
    puts x.name + " - " + x.translated
    # x.save
end
