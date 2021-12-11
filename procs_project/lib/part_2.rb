def reverser(string, &prc)
    new_str=string.reverse
    prc.call(new_str)
end

#----

def word_changer(sentence, &prc)
    array=sentence.split
    array.map! { |word| prc.call(word)}
    new_sentence = array.join(" ")
end

#------

def greater_proc_value(num, prc1, prc2)
    if prc1.call(num) > prc2.call(num)
        return prc1.call(num)
    else
        return prc2.call(num)
    end
end

#-----

def and_selector(array, prc1, prc2)
    new_array1 = []
    new_array2 = []

    array.each do |ele|
        if prc1.call(ele) ==true
            new_array1 << ele
        end
    end
    new_array1.each do |ele|
        if prc2.call(ele) == true
            new_array2 << ele
            return prc2.call(num)
        end
    end

    return new_array2
end

# alternate solution
# def and_selector(array, prc1, prc2)
#     new_arr = []
#         array.each do |ele|
#             if prc1.call(ele) && prc2.call(ele)
#                 new_arr << ele)
#             end
#         end
# return new_arr
# end
#----

def alternating_mapper(array, prc1, prc2)
    new_array = []
        array.each_with_index do |ele, i|
            if i.even? 
                new_array << prc1.call(ele)
            else
                new_array << prc2.call(ele)
            end
        end
    return new_array
end

