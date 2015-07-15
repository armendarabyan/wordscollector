require "./app/filterwords"
require "linguistics"

Linguistics.use( :en )
puts "running".en.present_participle
#
# class Game
#   def start
#     f = []
#     4.times do |i|
#         f.push(pick_random_word())
#     end
#
#     #combine variants with hidden word
#     #show words
#     #wait for input
#     #check if true
#     #start again
#   end
#
#   def pick_random_word
#     filter = FilterWords.new
#     offset = rand(filter.showno.count)
#     word = filter.showno.offset(offset).first
#     puts word
#   end
#
#   def pick_variants
#   end
#
#   def mix_words
#
#   end
# end
#

# Game.new.start
