require 'pry-byebug'

def substrings(input, dictionary)
    return nil if input.empty?
    return nil if dictionary.empty?

    sanitized = input.downcase.gsub(/[[:punct:]]/, '').split
    p sanitized
    
    # Reduce is only matching each word in the dictionary once, and not for each instance of the word.
    # Maybe within the reduce we can check each word of the sanitized input.
    dictionary.reduce(Hash.new(0)) do |found, word|
        p word
        if sanitized.include? word then            
            found[word.to_sym] += 1
        end
        p found
    end
end