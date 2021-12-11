# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort
def bubble_sort(arr)

sorted = false          #when this variable is false, it means that the array is not fully sorted yet

while !sorted           #ie, while the array is not sorted...
    sorted=true         #reset the sorted flag to true
    (0...arr.length - 1).each do |i|
        if arr[i] > arr[i+1]
            arr[i],arr[i+1]=arr[i+1],arr[i]
            sorted = false #because we just made a swap on, an additional pass of the each loop needs to be...
                            #performed so need to set the sorted flag back to false  (ie, "not sorted") so that...
                            # you go through the while loop again
                            #if a swap isn't made, the sorted flag stays true as per first line in while loop...
                            # and you never enter the if statement and sorted is never returned to false....
                            # there fore you exit the while loop
        end
    end 
end

arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]