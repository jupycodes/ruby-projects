def is_prime?(num)
    return false if num < 2
    (2...num).each { |factor| return false if num % factor == 0}
    return true 
end

def nth_prime(num)
    prime_array = []
    i = 2
    while prime_array.length < num
        prime_array << i if is_prime?(i)
        i += 1
    end

    prime_array[-1]
end

# p nth_prime(4)

def prime_range(min, max)
    prime_array = []
    (min..max).each do |ele|
        prime_array << ele if is_prime?(ele)
    end
    prime_array
end

