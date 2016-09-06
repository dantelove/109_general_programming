# beginning_ruby_4_1.rb

# take a string as an argument and return the string in reverse order without
# using the reverse method

#this is my attempt after hearing the exercise, but before watching Derek
#attempt to solve it.

def manual_reverse(str)
    str = str.split
    
    new_string = []
    
    str.length.times do
        new_string << str.last
        str.pop
    end
    
    joined_string = new_string.join(" ")
    
    p joined_string
end

manual_reverse("This is a longer string.")
manual_reverse("This is an even longer string.")