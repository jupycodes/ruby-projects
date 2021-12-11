def all_words_capitalized?(array)
array.all? { |word| word == word.capitalize}
end

#-----
# return false when all urls are valid
#none? method returns true when none of the collection methods are true

def no_valid_url?(urls)
valid = ['.com','.net','.io','.org']

urls.none? do |ele|
    valid.any? { |ending| ele.end_with?(ending) }
end

end

#----

def any_passing_students?(array)

array.any? { |student| student[:grades].sum / student[:grades].length >= 75 }

end

