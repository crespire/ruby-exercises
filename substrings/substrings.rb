def substrings(input, dictionary)
    return nil if input.empty?
    return nil if dictionary.empty?

    sanitized = input.downcase.gsub(/[[:punct:]]/, '').split
        
    dictionary.reduce(Hash.new(0)) do |found, word|
        sanitized.each do |match|
            if match.include? word then
                found[word] += 1
            end
        end
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)