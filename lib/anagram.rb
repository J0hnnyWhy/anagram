class String
  define_method(:anagram) do
    word = self.split("")
    new_array = []
    super_new_array = []
    100000.times do
      shuffled_word = word.shuffle
      new_array.push(shuffled_word)
    end
    new_array.each_index do |index|
      super_new_array.push(new_array[index].join)
    end
      super_new_array.uniq!
  end
end
