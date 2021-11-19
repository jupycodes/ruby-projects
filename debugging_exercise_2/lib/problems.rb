# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"

def largest_prime_factor(num)

new_arr=[]

(1..num).select do |factor|
    if num % factor == 0 && prime?(factor) == true
        new_arr << factor
    end
end

return new_arr[-1]

end

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end

    true
    
end

#-----

def unique_chars?(str)

char_count=Hash.new(0)

str.each_char do |char|
    char_count[char] +=1
end

char_count.each_value do |count|
    if count > 1
        return false
    end
end

return true

end


#----

def dupe_indices(array)

hash = Hash.new{ |k,v| k[v] = []}

array.each_with_index { |ele, i| hash[ele] << i }

hash.select { |k, v| v.length >1}

return hash

end

#-----

def ana_array(arr_1, arr_2)

arr_1.each do |ele|
    if !arr_2.include?(ele)
        return false
    end
end

arr_2.each do |ele|
    if !arr_1.include?(ele)
        return false
    end
end

    return true

end

