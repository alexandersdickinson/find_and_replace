class String
  def find_and_replace(find, replace)
    words = self.split()
    words.each_index() do |i|
      words[i] = replace if words[i] == find
    end
    words.join(' ')
  end
end