def palindrome?(str)

str.each_char.with_index  do |char,i|
    if str[i] != str[-i - 1]
        return false
    end
end

return true

end

#----

def substrings(str)
new_arr = []

(0...str.length).each do |start_idx|
    (start_idx...str.length).each do |end_idx|
        new_arr << str[start_idx..end_idx]
    end
end

return new_arr
end

#----

def palindrome_substrings(str)

# subs_arr = substrings(str)
# new_arr =[]

# subs_arr.each do |ele|
#     if ele.length > 1 && palindrome?(ele) == true
#         new_arr << ele
#     end
# end

# return new_arr

substrings(str).select { |ele| palindrome?(ele) && ele.length > 1}

end

p palindrome_substrings("abracadabra")



