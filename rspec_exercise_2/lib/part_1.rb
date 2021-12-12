def partition(arr, num)

first_arr = []
second_arr = []

arr.each do |ele|
    if ele < num
        first_arr << ele
    else second_arr << ele
    end
end

main_arr = []
main_arr << first_arr
main_arr << second_arr

return main_arr
    
end

#-----

def merge(hash_1,hash_2)
merged={}

hash_1.each {|k,v| merged[k]=v}
hash_2.each {|k,v| merged[k]=v}

return merged

end

#-----

def censor(sentence, words)

new_arr = sentence.split(" ").map do |ele|
    if words.include?(ele.downcase)
        star_vowels(ele)
    else
        ele
    end
end
        
new_arr.join(" ")

end

def star_vowels(word)

vowels = "aeiouAEIOU"
new_word=""

word.each_char do |char|
    if vowels.include?(char)
        new_word += "*"
    else
        new_word += char
    end
end

new_word

end
#------

def power_of_two?(num)
    product = 1
  
    while product < num
      product *= 2
    end
  
    product == num
  end
