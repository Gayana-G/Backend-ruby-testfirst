#write your code here
def translate(str)
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = str.split(/\b/)
  
    translated_words = words.map do |word|
        if word.match(/^[[:alpha:]]+/i)
            if vowels.include?(word[0].downcase) # starts with vowel
                word + "ay"
            else
            start = word.match(/(^[^#{vowels.join}q]*(qu)?)/i).to_s #starts with consonants
            rest = word[start.length..-1]
            capitalized = (word == word.capitalize)
            new_word = rest + start.downcase + "ay"
            capitalized ? new_word.capitalize : new_word
            end
        else
            word
        end
    end
  
    translated_words.join("")
  end
  