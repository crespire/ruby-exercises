def substrings(input, dictionary)
    return nil if input.empty?
    return nil if dictionary.empty?

    sanitized = input.downcase.gsub(/[[:punct:]]/, '')
    
    dictionary.reduce(Hash.new(0)) do |found, word|
        if sanitized.include? word
            found[word.to_sym] += 1
        end
    end
end