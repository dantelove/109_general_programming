# easy8_2.rb

# Mad libs are a simple game where you create a story template with blanks for words. 
# You, or another player, then construct a list of words and place them into the story, 
# creating an often silly or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an 
# adjective and injects those into a story that you create.

def prompt(msg)
  puts ">>#{msg}"
end

hash = { noun: "", verb: "", adjective: "", adverb: "" }

prompt "Enter a noun:"
hash[:noun] = gets.chomp

prompt "Enter a verb:"
hash[:verb] = gets.chomp

prompt "Enter an adjective:"
hash[:adjective] = gets.chomp

prompt "Enter an adverb:"
hash[:adverb] = gets.chomp

puts "Do you #{hash[:verb]} your #{hash[:adjective]}" +
      " #{hash[:noun]} #{hash[:adverb]}? That's hilarious!"