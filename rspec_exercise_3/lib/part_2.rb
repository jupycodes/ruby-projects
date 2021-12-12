def element_count(array)
    my_hash = Hash.new(0)
    array.each {|ele| my_hash[ele] += 1}
    my_hash
end

def char_replace!(str, hash) #this does not mutate string; creates a new one
    new_str = ""
    str.each_char do |char|
        if hash.keys.include?(char)
            new_str += hash[char]
        else
            new_str += char
        end 
    end

    new_str
end

# p char_replace!("hello world", {"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"})

def product_inject(array)