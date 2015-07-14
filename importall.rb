# require "highline/import"
# require "./activerecord/words"
# require "./app/filereader"
# require "./app/filterwords"
# require "./app/inputhelper"
#
#
# class Application
#   include InputHelper
#   def start
#     reader = FileReader.new
#     filter = FilterWords.new
#
#     new_symbols = reader.read('sub.srt')
#
#     filtered_symbols = filter.filter new_symbols
#     filtered_symbols.uniq!
#
#     filtered_symbols.each do |word_from_db|
#       str = "y"
#
#       #str = 'q'
#       if str == 'x'
#         break
#       elsif str == 'y'
#         filter.yes(word_from_db)
#       elsif str == 'n'
#         filter.no(word_from_db)
#       elsif str == 'q'
#         unknown_words = filter.showno()
#         unknown_words.each do |nword|
#           puts nword.name
#         end
#       end
#     end
#   end
#
#   def testfunction
#   end
#
#   def get_single_char
#
#   end
# end
#
#
# Application.new.start
