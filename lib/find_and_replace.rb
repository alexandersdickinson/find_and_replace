class String
  def find_and_replace(find, replace)
    sentence = self.split('')
    find_length = find.length()
    find_chars = find.split('')
    replace_chars = replace.split('')
    sentence.each_index do |i|
      if sentence[i] == find_chars[0]
        comparison = (sentence.slice(i, find_length)).join('')
        if comparison == find
          sentence.slice!(i, find_length)
          (1..replace.length()).each do |j|
            sentence.insert(i, replace_chars[(replace.length() - j)])
          end
        else
        end
      else
      end
    end
    return sentence.join('')
  end
end