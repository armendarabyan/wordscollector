require 'rest-client'
require "./app/filterwords"
require "./app/translate"
require 'json'


translator = TranslationApi.new

wordstore = FilterWords.new
words = wordstore.showno()

puts "count: " + words.count.to_s + " / " + wordstore.showyes.count.to_s

words.each do |x|
    if x.translated == nil
      x.translated = translator.translate(x.name)
      x.save
    end

    puts x.name + " - " + x.translated + " - " + x.created_at.to_s
end
