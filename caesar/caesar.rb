def wrapChar(char, offset=0)

    if char == char.upcase
      range_start = "A".ord
      range_end = "Z".ord
    elsif char == char.downcase
      range_start = "a".ord
      range_end = "z".ord
    end

    if range_start == 65 then
        wrapped = range_start + ((char.ord - range_start) + offset) % (range_end - range_start)
    elsif range_start == 97 then
        wrapped = range_start + ((char.ord - range_start) + offset) % (range_end - range_start)
    else
        wrapped = char.ord
    end

    wrapped.chr
  end
  
  def cypherize(phrase, offset=0)
    result = ""
    phrase.each_char { |c| result += wrapChar(c, offset).to_s }
    result
  end