#write your code here
def echo(word)
    word
end

def shout(word)
    word.upcase
end

def repeat(word, num = 2)
    Array.new(num, word).join(" ")
end

def start_of_word(word, ind)
    word[0...ind]
end

def first_word(phrase)
    phrase.split(" ")[0]
end

def titleize(str)
  exception_words = %w{a an and the or over for of nor}
  words = str.split(" ").map.with_index do |word, index|
    index == 0 || !exception_words.include?(word.downcase) ? word.capitalize : word
    end
    words.join(" ")
end
  

