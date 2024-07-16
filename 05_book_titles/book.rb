class Book
# write your code here
attr_reader :title

def title=(new_title)
    @title = capitalised(new_title)
end

private

def capitalised(title)

    excluded = %w{a an and the in of}

    words = title.split(" ").map.with_index do |word, ind| 
        if ind == 0 && excluded.include?(word)
            word.capitalize
        elsif excluded.include?(word)
            word
        else
            word.capitalize
        end
    end
    
    words.join(" ")
end
end
