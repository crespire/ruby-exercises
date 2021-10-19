def substrings(input, dictionary)
    # Process input so we can compare easily
    #  Strip all punctuation if there is any.
    # Reduce with initial empty hash
    dictionary.reduce(Hash.new(0)) do |found, word|
        if input.include? word
            found[word.to_sym] += 1
        end
    end
end
