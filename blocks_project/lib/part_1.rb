def select_even_nums(array)
array.select { |ele| ele % 2 == 0}
end 

#----

def reject_puppies(dogs)
dogs.reject { |dog| dog["age"] < 3 }
end 

#----

def count_positive_subarrays(array)
array.count { |sub_arr| sub_arr.sum > 0 }
end

#----

def aba_translate(string)
vowels="aeiou"
new_word = ""
string.each_char do |char|
    if vowels.include?(char)
        new_word += char + "b" + char
    else new_word += char
    end
end
return new_word

end

#----

def aba_array(array)
array.map { |word| aba_translate(word)}
end