def average(num1,num2)
(num1 + num2) / 2.0
end

def average_array(arr)
arr.sum / arr.length.to_f
end

def repeat(str,num)
str*num
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(sentence)

    arr=sentence.split(" ")

    arr.each do |word|
         word.downcase!
    end

    i=0
    while i < arr.length
        arr[i].upcase!
        i+=2
    end

    new_sent = arr.join(" ")

end



