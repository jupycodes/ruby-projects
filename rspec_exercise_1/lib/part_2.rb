def hipsterfy(word)
vowels="aeiou"

# rev_word = word.reverse!

# i=0
# while i < word.length
#     if vowels.include?(rev_word[i]) 
#         new_rev_word = rev_word[0...i]+rev_word[i+1..-1]
#     else new_rev_word = rev_word
#     end
#     break if vowels.include?(rev_word[i]) 
#     i+=1
# end

# return new_rev_word.reverse!

i = word.length - 1
while i >= 0
    if vowels.include?(word[i])
        return word[0...i] + word[i+1..-1]
    end
    i -= 1
end

word

end

p hipsterfy("panther")

#------

def vowel_counts(string)

vowels="aeiou"
arr = string.downcase.split("")
counter=Hash.new(0)

arr.select do |char|
    if vowels.include?(char)
        counter[char] +=1
    end
end

return counter

end

#-----

def caesar_cipher(string, num)
alphabet = "abcdefghijklmnopqrstuvwxyz"
new_str=""
string.each_char do |char|
    if alphabet.include?(char) == false
        new_str << char
    else
        old_i = alphabet.index(char)
        new_i = old_i + num
        new_str << alphabet[new_i % 26]
    end
end

return new_str
end

# puts caesar_cipher("123 _-!?@%", 3)

