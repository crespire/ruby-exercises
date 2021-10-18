def wrapChar(char, offset=0)
    range_start = char.ord < 91 ? 65 : 97

    if char.ord.between?(65, 90) || char.ord.between?(97, 122) then
        wrapped = range_start + (((char.ord - range_start) + offset) % 26)
    else
        wrapped = char.ord
    end

    wrapped.chr
  end
  
  def caesar_cipher(phrase, offset=0)
    result = ""
    phrase.each_char { |c| result += wrapChar(c, offset).to_s }
    result
  end