def my_map(array, &prc)

new_arr = []
array.each { |ele| new_arr << prc.call(ele) }
return new_arr

end

def my_select(array, &prc)
new_arr=[]
array.each { |ele| new_arr << ele if prc.call(ele) == true }
return new_arr
end

def my_count(array, &prc)
count = 0
array.each { |ele| count +=1 if prc.call(ele) == true }
return count
end

def my_any?(array, &prc)
count = 0
array.each { |ele| count +=1 if prc.call(ele) == true }
if count == 0
    return false
end
return true

# Alternate solution:
# array.each do |ele|
#     return true if prc.call(ele) == true
# end
# false

end

def my_all?(array, &prc)
    count=0
    array.each { |ele| count +=1 if prc.call(ele) == true }
    if count == array.length
        return true
    else
        return false
    end

    #alternate solution
# array.each do |ele|
#     if prc.call(ele) == false
#         return false
#     end
# end 
# return true

end

def my_none?(array, &prc)
    count = 0
    array.each { |ele| count +=1 if prc.call(ele) == true}
    if count == 0
        return true
    else
        return false
    end
end